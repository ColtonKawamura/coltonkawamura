---
layout: post
title: How to Install LAMMPS on MacOS
date: 2024-06-01 08:30:45
description: Step by step guide for installing LAMMPS on MacOS
tags: 
categories: computational
thumbnail: assets/img/lammps1.png
featured: false
disqus_comments: false
related_posts: true
---

First, open the terminal and use brew to install the core package.

```bash
brew install lammps
```
Next, make sure it's installed properly.

```bash
brew test lammps -v
```
Now install models needed,

```bash
brew install openkim-models
```
Now [download the tarball](https://www.lammps.org/download.html).

Open the .tar file and place wherever you want LAMMPS to live.

Go ahead and get yourself the mpi capability:

```bash
brew install open-mpi fftw
```
Install cmake so you can create your first LAMMPS build.

```bash
 brew install cmake
 ```

Now go the the directory where you put the .tar file. For me, it was

```bash
cd Documents/lammps-2Aug2023
```

Now [make your first build](https://coltonkawamura.github.io/coltonkawamura/blog/2024/new_lammps_build/)!

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
