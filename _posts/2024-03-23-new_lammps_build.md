---
layout: post
title: How to Make a New Build in LAMMPS
date: 2024-03-23 08:43:03
description: A quick note to make a new build in LAMMPS
tags: lammps
categories: physics
thumbnail: assets/img/lammps.png
featured: false
disqus_comments: false
related_posts: true
---

Go to the directory where LAMMPS is installed.
 
Create a folder and cd into the new build folder.

```bash
mkdir newbuildname; cd newbuildname 
```

Configure the new build with packages that you want. In this example, i'm using the GRANULAR package.
   
```bash
cmake ../cmake -D PKG_GRANULAR=yes
```

The one above configures a new build with the package "GRANULAR". To add multiple packages, simply add tack on more packages before the build.

```bash
cmake ../cmake -D PKG_SRD=yes
```

Finally, create the build.

```bash
cmake --build .
```

A list of all the packages can be found <a href="
https://docs.lammps.org/Build_package.html">here</a>. 

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
