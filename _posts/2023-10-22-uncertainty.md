---
layout: post
title:  A Visual Guide to the Uncertainty Principle
date: 2023-10-21 21:01:00
description: 
tags: quantum mechanics physics
categories: physics
thumbnail: assets/img/wave_UP.gif
---
The Heisenberg uncertainly principle captures the experimental and theoretical phenomena that you can’t ever really have full information about both a particle’s position and momentum at the same time. To increase certainty in one, you must give up certainty in the other. Quantitatively, it is described as follows,

$$\begin{aligned} 
\sigma_x \sigma_y \geq \frac{\hbar}{2} 
\end{aligned}$$

A dive into Fourier analysis can explain this much more analytically, but for now, let’s stick to these animations.

## Where is the Wave and What’s its Momentum?

In the image below: ask yourself Where is the wave?

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/wave_UP.gif" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

You can probably tell with some certainty that the wave is where that hump moving to the right is. Now ask yourself this question What is the wavelength? This question is a little hard to answer since the wavelength is the distance between repeating parts of a wave. But what if we had a longer pulse of a wave?

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/wiggle_wave.gif" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

Here, the wavelength is much easier to determine since the wave repeats itself. But what happened to the position of the wave? It’s smeared across the length of the pulse — it’s more uncertain. We just traded certainty of the wavelength for the uncertainty of its position.

## Momentum Links to Other Information

So what does this have to do with momentum? On quantum scales, particle’s wave-like behavior dominates. Physicist de Broglie linked particle and wave characteristics together with the constant, called Plank’s constant,

$$\begin{aligned} 
p = \frac{h}{\lambda} 
\end{aligned}$$

What does this mean for our everyday lives? One of the many examples includes solid-state hard drives, which takes advantage of the phenomena the uncertainty principle models. A fluctuating position of a particle can enable it to move through a barrier that it classically couldn’t. This allows electrons to be stored in space without the use of a capacitor, which allows for the non-volatile flash memory we have in most modern electronics.

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
