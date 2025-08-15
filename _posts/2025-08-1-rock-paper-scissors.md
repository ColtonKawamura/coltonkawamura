---
layout: post
title: How to Probably Win at Rock, Paper, Scissors
date: 2025-08-01 16:40:16
description: Using robots to play
tags: computational
categories: computational
---

The internet is riddled with articles about the best strategies for rock, paper, scissors (RPS), and they all generally suggest the same thing. But are these strategies actually effective?

# The Strategy

I should start by summarizing the applicable parts of the [2014 Chinese study](https://arxiv.org/pdf/1404.5199v1) where everyone else got their information. The researchers found that players will throw, on average, a distribution of 36% rocks, 33% papers, and 31% scissors (ignoring the standard deviation). This is slightly different than the Nash equilibrium for RPS, which predicts that the optimal strategy is 1/3 rock, 1/3 paper, and 1/3 scissors. Furthermore, the Chinese study found that if a player lost, they will most likely shift clockwise according to this figure:

{% include figure.liquid path="assets/img/rpsNash.gif" class="img-fluid rounded z-depth-1" zoomable=true %}

