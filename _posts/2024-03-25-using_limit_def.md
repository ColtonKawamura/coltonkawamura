---
layout: post
title: Using Limit Definition of Derivative in Research
date: 2024-03-25 10:49:31
description: Pre-Calculus has it uses in real physics.
tags: 
categories: physics
thumbnail: assets/img/limit_definition_deriv.png
featured: false
disqus_comments: false
related_posts: true
---
During my research, I had the opportunity to yield one of the first tools I've ever learned in caculus: the limit definition of the derivative,

$$\begin{align*}
\frac{df}{dx} \bigg|_{x=a}= \lim_{h \to 0} \frac{f(a+h) - f(a)}{h}. \tag{1} \label{1}
\end{align*}$$

It's a way to to calulate the rise over run of a function evaluated at $$a$$ with a really small rise $$h$$.

After that course, I put that tool aside to collect dust naivley thinking that physicists would use such an introductory concept.

**How wrong I was.**

Let's showcase its use for three particles with equal masses ($$m$$) and radii ($$d/2$$) that have Hookian interactions with the same spring constant $$k$$ like below. Where $$u_i$$ is the displacement of the $$i$$th particle and so on.

<div class="row">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.html path="assets/img/three_particles.jpeg" title="Expertly Drawn Diagram" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

Let's set up Newton's second law,

$$\begin{align*}
m \ddot{u} &= -k(u_{i}-u_{i-1})-k(u_{i}-u_{i+1}), \tag{2} \label{2}
\end{align*}$$

where the values of the the dispacements will account for the direction of the forces relative to the $$x$$-axis situated at the center of the $$i$$th particle.

Now look at the $$u_i-u_{i-1} $$ term, we can express it as a function of positions separated by a distance $$d$$,

$$\begin{align*}
u(x_{i-1}+d)-u(x_{i-1}).
\end{align*}$$

Now compare this to the limit definition of a derivative in \ref{1}. In the limit for small $$d$$, we get something similiar to \ref{1},

$$\begin{align*}
\frac{du}{dx}\bigg|_{x_i-d} = \lim_{d \to 0} \frac{u(x_{i-1}+d)-u(x_{i-1})}{d}.
\end{align*}$$

And with some algebra and notation that $$u_x$$ is a spatial derivative,

$$\begin{align*}
 u_x\big|_{x_i-d}  \,d&=u(x_{i-1}+d)-u(x_{i-1})\\
&= u_{i}-u_{i-1}. \tag{3} \label{3}
\end{align*}$$

Now apply to $$u_i-u_{i+1} $$,

$$\begin{align*}
\frac{du}{dx}\bigg|_{x_i+d} &= \lim_{d \to 0} \frac{u(x_i+d)-u(x_{i})}{d}\\
u_x\big|_{x_i+d} \, d&=u(x_i+d)-u(x_{i})\\
&= u_{i+1}-u_{i}. \tag{4} \label{4}
\end{align*}$$

Now we substitute equations \ref{3} and \ref{4} into \ref{2},

$$\begin{align*}
m \ddot{u} &= -k\left( u_x\big|_{x_i-d}  \,d\right)-k\left(-u_x\big|_{x_i+d} \, d\right)\\
&=kd\left(u_x\big|_{x_i+d}-u_x\big|_{x_i-d} \right). \tag{5} \label{5}
\end{align*}$$

Now apply the same method for the $$u_x\big|_{x_i+d}-u_x\big|_{x_i-d}$$ term, but where the distance is $$2d$$ between points. But since $$d$$ is small anways, $$2d\approx d$$, equation \ref{5} becomes a wave equation,

$$\begin{align*}
m \ddot{u} &=kd\left(u_x\big|_{x_i+d}-u_x\big|_{x_i-d} \right) \\
&= kd^2u_{xx}.
\end{align*}$$

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
