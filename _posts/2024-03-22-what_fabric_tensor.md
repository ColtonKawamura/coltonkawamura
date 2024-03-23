---
layout: post
title: What is a Fabric Tensor?
date: 2024-03-22 16:36:07
description: What is a Fabric Tensor?
tags: granular-mechanics
categories: physics
thumbnail: assets/img/what_fabric_tensor.png
featured: false
disqus_comments: false
related_posts: true
---

In granular mechanics, a fabric tensor is a second rank tensor (rectangular-looking matrix) that holds information about the orientation of contacts and interactions between particles.

## Basic Example
Let's start with an example in 2D. A fabric tensor with information about contacts between two particles could look like this:

$$\begin{align*} 
R_{ij} = \begin{bmatrix}
R_{11} & R_{12} \\
R_{21} & R_{22}
\end{bmatrix}.
\end{align*}$$

Each element is a measure of how much the contacts are aligned in that direction. So, if $$R_{11}$$ is large compared to the others, that means contacts are primarily aligned in direction of axis $1$. If $$R_{12}$$ is large compared to the others, that means there is some correlation between the axis $$1$$ and $$2$$.

Let's do an example with some numbers in 2D. We define axis $1$ as the horizontal axis and axis $2$ as the vertical.

Let's also assume for some system, it's fabric tensor is:

$$\begin{align*} 
R_{ij} = \begin{bmatrix}
0.8 & 0.1 \\
0.1 & 0.2
\end{bmatrix}.
\end{align*}$$

What does this fabric tensor tell us about the system?

Well, since $$R_{11}=0.8$$ is large compared to the others, the fabric tensor tells us that the contacts are strongly aligned with axis $1$, the horiztonal axis. Since, $$R_{22}=.2$$ is small compared to $$R_{11}=0.8$$, we can tell there is some, but less alignment of contacts in the vertcial direction.

To summarize this example:

- $$R_{11}=0.8$$ : Large value indicates a strong alignment of contacts along the horizontal axis.
- $$R_{22}=0.2$$ : Smaller value shows less alignment along the vertical axis
- $$R_{12}=R_{21}=0.1$$ : Small values indicate minor correlation between horizontal and vertical contact orientations.

## Fabric Tensors and Anisotropy

One focus is many fields in anisotropy, or how much variation occurs in the properties of a material depending on the direction measured. This means that a system that is highly anisotropic would behave differently if tested in one direction compared to another.

So, if we're mainly focused on the anisotrpic parts of the fabric tensor, how can we shave off the isotropic parts?

First, we need to identify what are the isotropic parts. Let's look at our 2D contact fabric tensor,

$$\begin{align*} 
R_{ij} = \begin{bmatrix}
0.8 & 0.1 \\
0.1 & 0.2
\end{bmatrix}.
\end{align*}$$

The isotropic part is the part of the tensor that woudl be uniform in all directions, typically represented by the diagonal elements if they are equal and if off-diagonal elements are zero.

In our example, the diagonal elements are not equal, and the off-diagonal elements are not zero, indicating anisotropy throughout the tensor.

To extract the isotropic parts, leaving the anisotrpic tensor, we would take out the average of the sum of diagonal elements, which represent the uniform and directional-independent part of the tensor.

Let's do it for this example. The isotropic part (sometimes called the spherical or hydrostatic part) is

$$\begin{align*} 
R_{ij}' &= R_{ij} - \frac{1}{2}\text{Tr}(R_{ij})\delta_{ij}\\
&=\begin{bmatrix}
0.8 & 0.1 \\
0.1 & 0.2
\end{bmatrix} -\frac{1}{2}(0.8+0.2)\begin{bmatrix}
1 & 0 \\
0 & 1
\end{bmatrix}\\
&= \begin{bmatrix}
0.3 & 0.1 \\
0.1 & -0.3
\end{bmatrix}
\end{align*}$$

What we are left with is a fabric tensor that is deviatoric (only show the portionals that deviate from the normal) also known as the anisotropic contact fabric tensor.

## Other Types of Fabric Tensors

Fabric tensors aren't only used for descrbing the orientation of contacts. For example, in LAMMPS, it can output contact, branch, normal force, or tangential force fabric tensors.

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
