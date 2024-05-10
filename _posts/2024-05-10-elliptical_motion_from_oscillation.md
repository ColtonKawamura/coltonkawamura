---
layout: post
title: Elliptical Motion from 2D Oscillation
date: 2024-05-10 13:56:04
description: How a particle moving in 2D can trace and ellipse.
tags: physics
categories: physics
thumbnail: assets/img/.png
featured: false
disqus_comments: false
related_posts: true
---

Start with the equation of motion in the \(x\) and \(y\) direction,

$$
\begin{aligned}
x(t) &= A_x \cos(\omega t) & (1) \\
y(t) &= A_y \cos(\omega t + \phi). & (2)
\end{aligned}
$$

Using the cosine addition formula \(\cos(a + b) = \cos(a)\cos(b) - \sin(a)\sin(b)\) on equation (2), and \(\frac{x(t)}{A_x} = \cos(\omega t)\),

$$
\begin{aligned}
y(t) &= A_y \left[\cos(\omega t) \cos(\phi) - \sin(\omega t) \sin(\phi)\right] \\
     &= A_y \left[\frac{x(t)}{A_x} \cos(\phi) - \sin(\omega t) \sin(\phi)\right]
\end{aligned}
$$

Using \(\cos^2a+\sin^2a=1\), \(\sin^2(\omega t) = \sqrt{1-\cos^2 (\omega t)}\),

$$
\begin{aligned}
y(t) &= A_y \left[\frac{x(t)}{A_x} \cos(\phi) - \sqrt{1 - \left(\frac{x(t)}{A_x}\right)^2} \sin(\phi)\right] & (3)
\end{aligned}
$$

Let's look at values of \(\phi = \pi/2\). Equation (3) becomes,

$$
\begin{aligned}
y(t) &= A_y \left[1 - \sqrt{1 - \left(\frac{x(t)}{A_x}\right)^2}\right] \\
y^2 &= A_y^2 - A_y^2\left(\frac{x}{A_x}\right)^2 \\
\frac{x^2}{A_x^2} + \frac{y^2}{A_y^2} &= 1.
\end{aligned}
$$

But, when an ellipse is rotated by an angle \(\theta\), the new coordinates are transformed,

$$
\begin{aligned}
    x' &= x \cos \theta - y \sin \theta \\
    y' &= x \sin \theta + y \cos \theta
\end{aligned}
$$

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
