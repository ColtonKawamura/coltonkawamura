---
layout: post
title: How to Allow Vim Repeat Keys in VS Code for Mac.
date: 2015-05-15 21:01:00
description: Because I don't want to move my fingers.
tags: workflow
categories: computing
thumbnail: assets/img/9.jpg
---

Put this in in your terminal.

```bash
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 11 
defaults write -g KeyRepeat -int 1 
```
Then restart the computer.