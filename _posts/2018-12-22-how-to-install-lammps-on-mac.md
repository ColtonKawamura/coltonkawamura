---
layout: post
title: How to Install LAMMPS on Mac
date: 2015-11-20 11:12:00-0400
description: A Quick Example
tags: LAMMPS
categories: computing
related_posts: false
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
