---
layout: post
title: How to install CasADi for MATLAB
date: 2024-05-23 08:15:08
description: Not as easy as installing a toolbox.
tags: 
categories: computational
thumbnail: assets/img/casadi.png
featured: false
disqus_comments: false
related_posts: true
---

Go to the [CasADi webpage](https://web.casadi.org) and navigate to the install page.

Next, make sure to choose the appropriate version for your machine. I'm on Mac, so I downloaded the file and placed the entire downloaded folder that was called "casadi-3" in "mypath".

Fire up the actual MATLAB application, don't use an IDE for this step. Add the path to the downloaded folder.

```MATLAB 
addpath('/my/path/to/file/casadi-3')
savepath; % Save the path
```

Next, you probably need to allow your system to run the functions in CasADi. Still in MATLAB, run

```MATLAB
>> casadi.MX
```
You might get some pop ups saying various function can't be opened. [Follow these steps.](https://github.com/casadi/casadi/wiki/FAQ%3A-how-to-resolve-on-macOS%3A-%22casadiMEX.mexmaci64%22-cannot-be-opened-because-the-developer-cannot-be-verified)

Try running 

```MATLAB
>> casadi.MX
```

If you get
```MATLAB
>> casadi.MX

ans = 

0x0
```
you're good! If not, please let me know and I can try to help.

***

<script src="https://giscus.app/client.js"
        data-repo="coltonkawamura/coltonkawamura"
        data-repo-id="R_kgDOKjP3YQ"
        data-category="comments"
        data-category-id="DIC_kwDOKjP3Yc4CaV1i"
        data-mapping="pathname"
        data-strict="0"
        data-reactions-enabled="1"
        data-emit-metadata="0"
        data-input-position="top"
        data-theme="dark"
        data-lang="en"
        data-loading="lazy"
        crossorigin="anonymous"
        async>
</script>
