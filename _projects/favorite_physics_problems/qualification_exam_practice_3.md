---
layout: distill
title: Physics Practice Problem - Capacitance
description: Physics Notes
img:
importance: 4
category: 
---

## Problem
Calculate the capacity $$C$$ of a spherical condenser of inner radius $$R_1$$ and outer radius $$R_2＄＄, which is filled with a dielectric varying as

$$\begin{align*}
\epsilon= \epsilon_0 + \epsilon_1 \cos^2 \theta
\end{align*}$$

where $$\epsilon_1$$  is a constant and $$\theta$$  is the polar angle.

## Solution 
We want to find the capacitance, so we can start with,

$$\begin{align*} 
C=\frac{Q}{V}.  \tag{1} \label{1}
\end{align*}$$

Working backwards, we notice that we weren't given $Q$ or $V$. But, we know those are both related by the electric displacement field,

$$\begin{align*} 
\mathbf{D} = \epsilon_0\mathbf{E}+\mathbf{P}.
\end{align*}$$

In our case, we don't have any polarization happening, so $\mathbf{P}=0$.

Since we have sphereical symmetry, we can use Gauss's Law to caclulate $E$ over the surface of a sphere from $R_1$ to $R_2$ with radius $r$,

$$\begin{align*} 
Q_{enc}&=\int{\mathbf{D}}\cdot\hat{n}\,\mathrm{d}a\\
&= \int \mathbf{E}\epsilon da\\
&= E \int_0^{2\pi} \int_0^{\pi} (\epsilon_0 + \epsilon_1 \cos^2 \theta) r^2 \sin \theta \, d\theta \, d\phi \\
&= E 2\pi r^2 \int_0^{\pi} (\epsilon_0 + \epsilon_1 \cos^2 \theta) \sin \theta \, d\theta \\
\end{align*}$$

At this point, we have some $\sin$ and $\cos$ terms. Some are squared. When I see this combination, I usually try to do u-substitution as a first-line attack.

Let
$$\begin{align*} 
u = \cos \theta,
\end{align*}$$
$$\begin{align*} 
 \, \frac{du}{d\theta} = -\sin \theta \Rightarrow d\theta = \frac{du}{-\sin \theta}.
\end{align*}$$

Don't forget the change the limits of integration,

$$\begin{align*} 
&\text{Upper } \rightarrow u = \cos (\pi) = -1\\
&\text{Lower } \rightarrow u = \cos (0) = 1.
\end{align*}$$

Put that u-substitution back into our integral,

$$\begin{align*}
Q_{enc}&= E 2\pi r^2 \int_{1}^{-1} (\epsilon_0 + \epsilon_1 u^2) \sin \theta \left(\frac{du}{-\sin \theta}\right) \\
&= E 2\pi r^2 \int_{-1}^{1} (\epsilon_0 + \epsilon_1 u^2) \, du \\
&= E 2\pi r^2 \left(\epsilon_0 u \bigg|_{-1}^{1} + \frac{\epsilon_1 u^3}{3} \bigg|_{-1}^{1}\right) \\
&= E 2\pi r^2 \left(2\epsilon_0 + \frac{2\epsilon_1}{3}\right) \\
&= E 4\pi r^2 \left(\epsilon_0 + \frac{\epsilon_1}{3}\right) \tag{2} \label{2}
\end{align*}$$

Now that we know the $Q_{enc}$ between the sphereical "plates," we go back to the definition of capacitance,

$$\begin{align*}
C=\frac{Q}{V}. \tag{3} \label{3}
\end{align*}$$

We could input our relation for charge in \ref{2}, but we're still left with calculating potential. Let's take a look at what calculating $$V$$ would look like:

$$\begin{align*}
V = \int_{1}^{2} \vec{E} \cdot d\vec{l}.

\end{align*}$$

We get an expression for $$E$$ from \ref{2},

$$\begin{align*}
Q_{enc}&=E 4\pi r^2 \left(\epsilon_0 + \frac{\epsilon_1}{3}\right) \\
\vec{E}&=\frac{Q}{4 \pi r^2} \left( \frac{1}{\epsilon_0 + \frac{\epsilon_1}{3}} \right)
\hat{r}.
\end{align*}$$

We get the $$\hat{r}$$ because we have radial symmetry. Now we place this into equation \ref{3} to solve for our capacitance expecting the $$Q$$ to cancel out,

$$\begin{align*}
C = Q \left(\int_{R_1}^{R_2} \left( \frac{Q}{4 \pi r^2}  \epsilon_0 + \frac{\epsilon_1}{3} \right)  \hat{r} \cdot d\vec{r} \right)^{-1} \\
= 4 \pi (\epsilon_0 + \epsilon_1/3) \left[ -\frac{1}{r} \right]_{R_1}^{R_2} \\
= 4 \pi (\epsilon_0 + \epsilon_1/3) \left( \frac{1}{R_1} + \frac{1}{R_2} \right)^{-1} \\
= 4 \pi (\epsilon_0 + \epsilon_1/3) \left( \frac{R_2 - R_1}{R_1 R_2} \right)^{-1} \\
= 4 \pi (\epsilon_0 + \epsilon_1/3) \frac{R_1 R_2}{R_2 - R_1}

\end{align*}$$


***

If you have any questions or find an error, please leave a comment below and I will reply as soon as I can!

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
