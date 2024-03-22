---
layout: distill
title: Adding User Snippets to Visual Studio Code
description: Physics Notes
img:
importance: 4
category: 
---


If you want to add a user snipped to VS Code, first choose the language or filetype you want it to be activated on. In this example, I'll use Markdown. Here's the steps.

1. Open command palette with CMD+SHIFT+P
2. Find "markdown.json"
3. Enter your snippet, in this example:

```json
{
    "LaTeX align* environment in Markdown": {
        "prefix": "align",
        "body": [
            "$$\\begin{align*}",
            "$1",
            "\\end{align*}$$"
        ],
        "description": "Insert a LaTeX align* environment in Markdown"
    }
}
```

4. Save the file.
5. When you go back to your editor, when you type the prefix, in our case "align", you'll have to force the suggest with OPTION+ESC.
6. If you don't want that, use the command palette, and find "settings.json"
7. Add this 
```json
"[markdown]": { "editor.quickSuggestions": true }
```

Now, whenever you type the prefix, the block will suggest it in the language you chose.

***

If you have any questions or find an error, please leave a comment below and I will reply as soon as I can!

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
