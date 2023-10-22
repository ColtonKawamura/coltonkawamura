---
layout: post
title:  What Causes a Curveball to Curve?
date: 2023-10-20 21:01:00
description: 
tags: fluid mechanics physics
categories: physics
thumbnail: assets/img/spinning_ball_vectors.gif
featured: false
disqus_comments: false
related_posts: true
---
If you’ve ever seen a curveball in action, you might have wondered how it works. Is it centripetal force? An optical illusion? The answer may surprise you: it’s friction.

## Air and Spin

When a non-spinning ball is thrown, the air flows around it as shown below with the blue arrows.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/non_spinning_ball.gif" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

Now consider putting spin on the ball as depicted here.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/spinning_ball.gif" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

When the ball spins, a thin layer of air rotates with the ball at approximately the same velocity as the spin of the ball. This is caused by friction between the surface of the ball and the air engulfing the ball.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/spinning_ball_vectors.gif" title="example image" class="img-fluid rounded z-depth-1" %}
    </div>
</div>
<div class="caption">
    A thin layer of air (light blue) spins with the ball as it rotates
</div>

## Pressure from Friction

What you may notice is that one side of the air rotating with the ball spins with the direction of air flowing past the ball. On the other side, its the opposite direction. This causes air pressure to be low on one side and high on the other.

This difference in pressure causes the curveball to be pushed in the direction of low pressure. For the mathematically inclined, this is a great example of what Bernoulli’s principle describes.

$$\begin{aligned} 
P_1+\frac{1}{2}\rho v_1^2+\rho g h_1 = P_2+\frac{1}{2}\rho v_2^2+\rho g h_2 . 
\end{aligned}$$

When the forward velocity of the ball is much greater than the spin on the baseball, the pressure force seems small and the ball doesn’t curve much. However, when the ball starts to slow down, that’s when the ball really begins to curve. This typically happens right when it gets to the batter — how convenient!

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
