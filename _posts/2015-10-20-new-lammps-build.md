---
layout: post
title: How to Make a New LAMMPS Build
date: 2015-10-20 11:12:00-0400
description: A Quick Example
tags: LAMMPS
categories: computing
related_posts: false
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