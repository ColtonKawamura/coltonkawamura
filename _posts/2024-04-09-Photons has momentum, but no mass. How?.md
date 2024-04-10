---
layout: post
title: If Photons Have No Mass, How Can They Have Momentum?
date: 2024-04-09 12:05:07
description: A quick review of this seemingly counterintuitive concept.
tags: 
categories: physics
thumbnail: assets/img/photon_mass.png
featured: false
disqus_comments: false
related_posts: true
---

I was brushing up on some relativity today and came back to this common question. Here's an overview of how its possible.

We can start answering this question with the famous equation from Einstein: $$E=mc^2$$. However, while this is good branding for physics, it doesn't tell the full story. $$E=mc^2$$ relates the energy of a particle at rest to its mass. Now, if we have a moving particle, the equation becomes the full energy-momentum relation,

$$\begin{align*}
E^2 = (pc)^2 + (m_0 c^2)^2,
\end{align*}$$

Where there's an extra momentum $$p$$ term and $$^2$$'s on all the terms. $$m$$ also changed to $$m_0$$ to denote that this is the *rest* mass a particle.

The subject of question is about the mass, so let's solve for it,

$$\begin{align*}
(m_0 c^2)^2&=E^2- (pc)^2\\
m_0 c^2&= \sqrt{E^2- (pc)^2}.
\end{align*}$$

This is physics, so we can do things like set $$c=1$$ for the sake of analysis,

$$\begin{align*}
m_0 &= \sqrt{E^2- p^2}.
\end{align*}$$

We can intepret rest mass as a measure of the energy that is present in the particle's rest frame, where the momentum is zero.

Here's the thing, there's no such thing as a rest frame for photos - they travel at the speed of light. So this means there is no mass, or again a better way of interpreting "mass", there is no energy present in the particle's rest frame. So the energy of photon is

$$\begin{align*}
0 &= \sqrt{E^2- p^2} \\
E &= p
\end{align*}$$

for $$c=1$$.

This highlights a nice interpretation of how to think "mass" is for non-classical scenarios. Think of it less of what makes up "stuff" of more of the rest energy in the particle's references frame.


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
