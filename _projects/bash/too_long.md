---
layout: distill
title: argument list too long
description: Argument list too long for delete.
img:
importance: 4
category: 
---


If this doesn't work:

```bash
rm *.filetype
```
Try this:
   
```bash
find . -maxdepth 1 -name "*.filetype" -print0 | xargs -0 rm
```

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
