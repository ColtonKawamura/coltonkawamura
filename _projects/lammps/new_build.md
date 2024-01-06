---
layout: distill
title: New Build in LAMMPS
description: How to Make a New Build in LAMMPS
img:
importance: 4
category: 
---



1. Go to the directory where LAMMPS is installed.
2. Create a folder and cd into the new build folder.

```bash
mkdir newbuildname; cd newbuildname 
```
3. Configure the new build with packages that you want.
   
```bash
cmake ../cmake -D PKG_BODY=on .
```

The one above configures a new build with the package "BODY".

4. Create the build.

```bash
cmake --build -D PKG_BODY=on .
```

A list of all the packages can be found <a href="
https://docs.lammps.org/Build_package.html">here</a>. 

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
