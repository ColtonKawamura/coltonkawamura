---
layout: distill
title: Physics Practice Problem - Compton Effect
description: Physics Notes
img:
importance: 4
category: 
---

## Problem
In the Compton effect, a $$\gamma$$-ray photon of wavelength $$\lambda$$ strikes a free, but initially stationary, electron of mass $$m$$. The photon is scattered at an angle $$\theta$$, and its scattered wavelength is $$\lambda_f$$. The electron recoils at an angle $$\phi$$.

- Part A: Write the relativistic equations for momentum and energy conservation.
- Part B: Find an expression for the change $$\lambda'-\lambda$$ in the photon wavelength for the special case $$\theta=\pi/2$$.

## Part A Solution

The energy before the collision must be the same before and after. The energy after is split between that of the photon $$E$$ and electron $$E_e$$,

$$\begin{align*}
E_+E_e=E+E_e. \tag{1} \label{1}
\end{align*}$$

Compare the energies of each before and after the collision. Let's look at the electron first. The problem stated it was initally stationary, so we only have rest energy,

$$\begin{align*}
E_e&=mc^2. \tag{2}
\end{align*}$$

After the collision, it has both rest energy and kinetic energy,

$$\begin{align*}
\left( E_e' \right) = \left(p_e' c\right)^2+\left( mc^2\right)^2. \tag{3}
\end{align*}$$

Now for the photon, it has no mass, but has momentum before and after the collision,

$$\begin{align*}
E=pc \tag{4}
\end{align*}$$

and

$$\begin{align*}
E'=p'c. \tag{5}
\end{align*}$$

Substitude these relations in equation \ref{1}, we have,

$$\begin{align*}
pc+mc^2&=p'c+\sqrt{ \left(p_e' c\right)^2+\left( mc^2\right)^2} \tag{6} \label{6}
\end{align*}$$

for our energy relation.

The momentum before the collision must be the same before and after. The momentum after is split between the momenta of the photon $$p^p$$ and electron $$p^e$$,

$$\begin{align*}
p &= p'+p_e'.
\end{align*}$$

Remember that momentum is a *vector*,

$$\begin{align*}
\vec{p} &= \vec{p}'+\vec{p_e}'. \tag{7} \label{7}
\end{align*}$$

## Part B Solution

This part is asking about angles, so that's a hint we should find a dot product between two momenta. Let's exppand \ref{7} to get it.

$$\begin{align*}
p_{e}^{2} = p^{2} + p'^{2} - 2pp' \cos(\theta)
\end{align*}$$

Now if we also expand out the energy conservation in \ref{6}, we can find an expression for $$p_e$$,

$$\begin{align*}
p^{2}c^{2} + 2pc(m c^{2}) + m^{2}c^{4} &= p'^{2}c^{2} + p_{e}^{2}c^{2} + m^{2}c^{4}\\
p^{2}c^{2} + 2pcm^{2}c^{2} + m^{2}c^{4} &= p'^{2}c^{2} + p_{e}^{2}c^{2} + m^{2}c^{4}\\
p^{2} + 2pcm^{2} &= p'^{2} + p_{e}^{2} \\
p^{2} - p'^{2} &= p_{e}^{2} + 2mc(p - p')


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
