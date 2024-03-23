---
layout: post
title: What is Vertlet Integration?
date: 2024-03-23 09:06:57
description: A quick overview of what a verlet integration is in the context of computational physics.
tags: 
categories: physics
thumbnail: 
featured: false
disqus_comments: false
related_posts: true
---


When running computer simulations, we typically start with locations of particles $$\mathbf{r}(t)$$ and some initial velocity $$\mathbf{v}(t)$$.

Our  goal is to throw this information into a computer and see where those particles end up over time. 

With basic physics we know that,

$$\begin{align*} 
\mathbf{r}(t+d t)=\mathbf{r}(t)+\mathbf{v}(t)d t+{\frac{1}{2}}\mathbf{a}(t)d t^{2} \tag{1} \label{1}
\end{align*}$$

for some $$dt$$ that we give the computer.

Now, to figure out what the velocities evolve as over time, we have another basic equation,

$$\begin{align*} 
\mathbf{v}(t+d t)=\mathbf{v}(t)+\mathbf{a}(t)d t. \tag{2} \label{2}
\end{align*}$$

Now all that is left is to find what the acceleration is. We can do this with Newton's 2nd Law,

$$\begin{align*} 
\mathbf{F}&=m\mathbf{a}\\
\mathbf{a}&=\frac{\mathbf{F}}{m}.
\end{align*}$$

And there you have it. With equations \ref{1} and \ref{2}, as well as the initial positions, velocities, and forces between particles, we can run a basic Verlet integration simulation.

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
