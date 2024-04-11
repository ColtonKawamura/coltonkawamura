---
layout: page
title: Math Notes and Identities
description: A collection of notes for references in physics.
img: assets/img/physics_thumb.png
importance: 4
category: Physics
---
# Coordinate Systems
***
## Cartesian to Sphereical

$$\begin{align*}
x &= r \sin \theta \cos \phi \\
y &= r \sin \theta \sin \phi \\
z &= r \cos \theta
\end{align*}$$

 

$$\begin{align*}
\hat{x} &= \sin \theta \cos \phi \, \hat{r} + \cos \theta \cos \phi \, \hat{\theta} - \sin \phi \, \hat{\phi} \\
\hat{y} &= \sin \theta \sin \phi \, \hat{r} + \cos \theta \sin \phi \, \hat{\theta} + \cos \phi \, \hat{\phi} \\
\hat{z} &= \cos \theta \, \hat{r} - \sin \theta \, \hat{\theta}
\end{align*}$$
 
 

## Sphereical to Cartesian
 

$$\begin{align*}
r &= \sqrt{x^2 + y^2 + z^2} \\
\theta &= \tan^{-1}\left(\frac{\sqrt{x^2 + y^2}}{z}\right) \\
\phi &= \tan^{-1}\left(\frac{y}{x}\right)
\end{align*}$$
 
 

$$\begin{align*}
\hat{r} &= \sin \theta \cos \phi \, \hat{x} + \sin \theta \sin \phi \, \hat{y} + \cos \theta \, \hat{z} \\
\hat{\theta} &= \cos \theta \cos \phi \, \hat{x} + \cos \theta \sin \phi \, \hat{y} - \sin \theta \, \hat{z} \\
\hat{\phi} &= -\sin \phi \, \hat{x} + \cos \phi \, \hat{y}
\end{align*}$$
 
 

## Cartesian to Cylindrical
 

$$\begin{align*}
x &= s \cos \phi \\
y &= s \sin \phi \\
z &= z
\end{align*}$$
 
 

$$\begin{align*}
\hat{x} &= \cos \phi \, \hat{s} - \sin \phi \, \hat{\phi} \\
\hat{y} &= \sin \phi \, \hat{s} + \cos \phi \, \hat{\phi} \\
\hat{z} &= \hat{z}
\end{align*}$$
 
 

## Cylindrical to Cartesian
 

$$\begin{align*}
s &= \sqrt{x^2 + y^2} \\
\phi &= \tan^{-1}\left(\frac{y}{x}\right) \\
z &= z
\end{align*}$$
 
 

$$\begin{align*}
\hat{s} &= \cos \phi \, \hat{x} + \sin \phi \, \hat{y} \\
\hat{\phi} &= -\sin \phi \, \hat{x} + \cos \phi \, \hat{y} \\
\hat{z} &= \hat{z}
\end{align*}$$
 
 

# Expansions
***
## Taylor Series Expansions
 

Expanding $$f(x)$$ about a point $a$
$$\begin{align*}
f(x) = f(a) + f'(a)(x - a) + \frac{f''(a)}{2!}(x - a)^2 + \frac{f'''(a)}{3!}(x - a)^3 + \cdots + \frac{f^{(n)}(a)}{n!}(x - a)^n + \cdots
\end{align*}$$
 
## Binomial Expansions

$$\begin{align*}
 (a + b)^n = \sum_{k=0}^{n} \binom{n}{k} a^{n-k} b^k
\end{align*}$$

where $$ \binom{n}{k}$$ are the binomial coefficients,
$$\begin{align*}
\binom{n}{k} = \frac{n!}{k!(n-k)!}.
\end{align*}$$

# Operators
***
## Commutators
 

$$\begin{align*}
[\hat{A}, \hat{B}] = \hat{A}\hat{B} - \hat{B}\hat{A}
\end{align*}$$
 
 

# Summations
***
## Dirac Summations
 

$$\begin{align*}
\sum_n \sum_m \delta_{nm} f_n(x) = \sum_n f_n(x)
\end{align*}$$

 

# Vector Operations
***
## Derivative 
 
$$\begin{align*}
\frac{d}{dt} (\vec{A} \times \vec{B}) = \left( \frac{d\vec{A}}{dt} \times \vec{B} \right) + \left( \vec{A} \times \frac{d\vec{B}}{dt} \right)
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
