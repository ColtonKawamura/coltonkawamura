---
layout: post
title: How to Use VIM and MATLAB
date: 2025-08-15 16:40:16
description: A lightweight interface from VIM and MATLAB
tags: MATLAB
categories: computational
thumbnail: assets/img/vimMat1.gif
---

This method only requires MATLAB (2015b or later), VIM, and python. No external libraires needed.

# How to run with VIM

MATALB and VIM can be joined together with MATLAB's native python engine. I rolled my own to keep everything lightweight.

## Enable MATLAB Engine Sharing via Python

First we build a path that points to where MATLAB stores the python engine.

```matlab
cd(fullfile(matlabroot,'extern','engines','python'))
```

So if `matlabroot` is `Applications/MATLAB_R2025a.app`, then you'll be in '/Applications/MATLAB_R2025a.app/extern/engines/python' after this `cd`

Next, we take MATLAB's engine and we install it into our local `python3`.

```matlab
system('python3 -m pip install .')
```
*Note*:

When I did this, I got an error that said this:

```bash
  ERROR: Failed building wheel for matlabengine
[?25hFailed to build matlabengine
ERROR: Could not build wheels for matlabengine which use PEP 517 and cannot be installed direct
```
What I did to resove is that I had to upgrade `wheel` and `setuptools` with

```bash
python3 -m pip install --upgrade pip setuptools wheel
```

That this point, there is no need to redo these steps.

# Share the Engine with Python

Now, in MATLAB enter
```matlab
matlab.engine.shareEngine('VIM')
```
This names the MATLAB session `VIM`.

The next step is creating a helper script which we'll name `sendMATLAB.py`:

```python
#!/usr/bin/env python3
import sys
import matlab.engine

def main():
    code = sys.stdin.read()

    try:
        eng = matlab.engine.connect_matlab('VIM')
        eng.eval(code, nargout=0)
    except Exception as e:
        print(f"[ERROR] MATLAB exception: {e}", file=sys.stderr)

if __name__ == '__main__':
    main()
```
This takes whatever is sent to the system and ends it to the engine. The `nargout=0` makes it so it doesn't expect a return.

Now make it executable
```bash
chmod +x sendMATLAB.py
```

# VIM Mapping

Now add this to `~/.vimrc`

```vim
" 1) Define the path to your Python helper
let g:matlab_engine_script = '/Users/your/path/sendMATLAB.py'

function! SendMatlabLine() abort
    let l = getline('.') "get the current line in the buffer (line on your MATLAB file)

    " take the buffer line (the line in MATLAB) and pipe into our python script which sends to MATLAB
    " 2>&1 redirects stderr to stdout so both errors and normal outputs are captureed
    " shellescape makes sure the line and teh script path avoids errors with weird characters
    let cmd = 'echo ' . shellescape(l) . ' | python3 ' . shellescape(g:matlab_engine_script) . ' 2>&1' 

    "whatever comes back from MATLAB will get captured
    let output = system(cmd)

    " if the shell command failed, we get v:shell_error = failure and lets us see the error
    if v:shell_error
        echohl ErrorMsg " grab any errors, could also expand to WarningMsg maybe
        echo output
        echohl None "resests the highlight group back to nomal
    else
        "if everything went well, prints our result
        echo output 
    endif
endfunction

" same thing as above but just the highlighted porting in visual mode
function! SendMatlabSelection() abort
    let lines = getline("'<", "'>") "this is waht grabs visual mode
    let cmd = 'python3 ' . shellescape(g:matlab_engine_script) . ' 2>&1'
    let output = system(cmd, lines)
    if v:shell_error
        echohl ErrorMsg
        echo output
        echohl None
    else
        echo output
    endif
endfunction

" map our functions to <leader>me
nnoremap <silent> <leader>me :call SendMatlabLine()<CR>
xnoremap <silent> <leader>me :<C-U>call SendMatlabSelection()<CR>
command! -nargs=+ Mat call SendToMatlab(<q-args>) 

function! SendToMatlab(cmd) abort
    let code = a:cmd . "\n"
    let shellcmd = 'echo ' . shellescape(code) . ' | python3 ' . shellescape(g:matlab_engine_script)
    let output = system(shellcmd)
    if v:shell_error
        echohl ErrorMsg | echo substitute(output, '\n\+$', '', '') | echohl None
    else
        echo substitute(output, '\n\+$', '', '')
    endif
endfunction
```
Above, we define three functions. `SendMatlabLine` let's us send the whole line in normal mode to MATLAB. `SendMatlabSelection` only sends what we highlight in visual mode, and `SendToMatlab` allows us to send a command via user defined commands.

Now save this and watch it in action!

For `SendMatlabLine` we call send with `<leader>me`:

{% include figure.liquid path="assets/img/vimMat1.gif" class="img-fluid rounded z-depth-1" zoomable=true %}

Write commands outside of the file with `SendToMatlab`:

{% include figure.liquid path="assets/img/vimMat2.gif" class="img-fluid rounded z-depth-1" zoomable=true %}

Everything also works for figures!

{% include figure.liquid path="assets/img/vimMat3.gif" class="img-fluid rounded z-depth-1" zoomable=true %}

Send just the highlighted portion in visual mode with `SendMatlabSelection`:

{% include figure.liquid path="assets/img/vimMat4.gif" class="img-fluid rounded z-depth-1" zoomable=true %}

Please let me know if you come up with anything more!
