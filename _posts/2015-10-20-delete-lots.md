---
layout: post
title: Argument List Too Long When Removing Files
date: 2015-10-20 11:59:00-0400
description: An alternate to fix an error when removing a large amounts of files at once.
tags: workflow
categories: compute
---

If this doesn't work:

```bash
rm *.filetype
```
Try this:
   
```bash
find . -maxdepth 1 -name "*.filetype" -print0 | xargs -0 rm
```
