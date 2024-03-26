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
During my resaerch, I had the opportunity to yield one of the first tools I've ever learned in pre-caculus: the limit definition of the derivative,

$$\begin{align*}
\frac{df}{dx} = \lim_{h \to 0} \frac{f(a+h) - f(a)}{h}. \tag{1} \label{1}
\end{align*}$$

Which is just a way to to calulate the rise over run of a function with a really small rise $$h$$.

After that course, I put that tool aside to collect dust naivley thinking that physicists would use such an introductory concept.

How wrong I was.

It turns out that for small intervals, equation \ref{1} is a clever way to express the difference between two points as the derivative.

To start

Let's look at the differece between the displacement between particle $$i$$ and $$i-1$$, it would be defined as

$$\begin{align*}
u_i-u_{i-1}.
\end{align*}$$

We generalize this as some displacement function $$u(x)$$, where $$x$$ is the distance, the difference between the displacements of the two particles becomes

$$\begin{align*}
u(x_{i-1}+d)-u(x_{i-1})
\end{align*}$$

Now, we compare this to the limit definition of the derivative,
$$\begin{align*}
\frac{df}{dx} = \lim_{h \to 0} \frac{f(a+h) - f(a)}{h}
\end{align*}$$

Ours looks more like

$$\begin{align*}
\frac{du}{dx}\bigg|_{i-1} = \lim_{d \to 0} \frac{u(x_{i-1}+d)-u(x_{i-1})}{d}
\end{align*}$$

or

$$\begin{align*}
u_x\big|_{i-1}d&=u(x_{i-1}+d)-u(x_{i-1})\\
&= u_{i-1}-u_{i}.
\end{align*}$$


Now looking at a particle at $$i+1$$, the displacement is
$$\begin{align*}
u(i+d)-u(i)
\end{align*}$$

So our limit becomes 

$$\begin{align*}
\frac{du}{dx}\bigg|_{i+1} = \lim_{d \to 0} \frac{u(x_i+d)-u(x_{i})}{d}
\end{align*}$$

or

$$\begin{align*}
u_x\big|_{i+1}d&=u(x_i+d)-u(x_{i})\\
&= u_{i+1}-u_{i}.
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
