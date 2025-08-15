---
layout: post
title: How to Probably Win at Rock, Paper, Scissors
date: 2025-08-01 16:40:16
description: Using robots to play RPS
tags: computational
categories: computational
---

The internet is riddled with articles about the best strategies for rock, paper, scissors (RPS), and they all generally suggest the same thing. But are these strategies actually effective?

# The Strategy

I should start by summarizing the applicable parts of the [2014 Chinese study](https://arxiv.org/pdf/1404.5199v1) where everyone else got their information. The researchers found that players will throw, on average, a distribution of 36% rocks, 33% papers, and 31% scissors (ignoring the standard deviation). This is slightly different than the Nash equilibrium for RPS, which predicts that the optimal strategy is 1/3 rock, 1/3 paper, and 1/3 scissors. Furthermore, the Chinese study found that if a player lost, they will most likely shift clockwise according to this figure:

![Initial Diagram](/assets/img/rpsDiag.gif "With Nash")

If a player wins or ties, they are significantly more likely to repeat their last action. If you’re armed with these data, you could formulate the following strategy:

* Play paper first (since most people throw rock first)
* If you win: Play what your opponent just lost with.
* If you lost or tie: Play what was not played last round

This is similar to the other information on the internet. But how effective is this in practice? That’s where computers come in. I armed one bot (let’s call it Roboshambo) with the strategy described above and the other bot (Humans) with the average distribution of participants found in the paper. I then let them duke it out for 1000 iterations through a Monte Carlo simulation of best two-of-three games. Here’s the result:

{% include figure.liquid path="assets/img/rpsRoboWins.gif" class="img-fluid rounded z-depth-1" zoomable=true %}

Roboshambo was able to walk away with a 71% win percentage over the Humans. That’s a big swing in your favor if you use the strategy suggested above.
Randomness: The Best Counter-Strategy

Let’s take things a little deeper: if you’re playing against someone who you think has some sort of strategy, like the one demonstrated above, but you can’t quite figure out what approach they’ll employ, what’s the best counter-strategy for you? Play 1/3 rock, 1/3 paper, 1/3 scissors, the original Nash equilibrium of RPS. If one player acts completely random, unlike what happens with humans in real life, then the best record their opponent can have, no matter their strategy, is 50%.

To demonstrate this, let’s place our bots against each other again; Roboshambo plays with the same strategy as before, while the Humans play according to the Nash equilibrium. For 1000 iterations, the results are:

{% include figure.liquid path="assets/img/rpsNash.gif" class="img-fluid rounded z-depth-1" zoomable=true %}

The Monte Carlo simulation places the win ratio to about 50% — precisely what the theory predicts! This magnifies the power of equilibrium in zero-sum games like RPS. So next time you play against a friend who might have a strategy in RPS, it might be best to try to be like our Human bot and play as random as possible. If you don’t think they have a strategy, then go ahead and try out the tactic at the beginning of this article. You might just score a 71% win percentage!
