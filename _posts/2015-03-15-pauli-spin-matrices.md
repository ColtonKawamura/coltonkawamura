---
layout: post
title: Pauli Matricies and Quantum Measurements
date: 2015-03-15 16:40:16
description: Quantum Measurements are Linear Transformations
tags: quantum linear-algebra
categories: phyiscs
---

**Pauli spin matrices** are operators that describe the action of quantum measurements in the context of spin, particularly for spin-½ particles like electrons, protons, or neutrons. For spin 1-particles, need to use the generalized 3x3 marix. These matrices are used to represent measurements along the x, y, and z axes in quantum mechanics.

$$
\sigma_x = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}, \quad
\sigma_y = \begin{pmatrix} 0 & -i \\ i & 0 \end{pmatrix}, \quad
\sigma_z = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}
$$

Let's focus on $$\sigma_x$$. When transforming from either $$y$$- or $$z$$-space to $$x$$-space, some vectors in $$x$$-space will carry over, meaning they will remain eigenvectors of $$\sigma_x$$. The key difference is that they will point in the directions corresponding to both $$\pm \ket{\psi}$$, with a proportionality factor $$\lambda$$.

$$
\sigma_x \ket{\psi} = \pm \lambda \ket{\psi}
$$

What makes the **Pauli spin matrices** special is that they transform the space while leaving certain vectors unchanged, except for being scaled by a factor of ±1.

For a vector $$ \ket{\psi} $$, if it is an eigenvector of a Pauli matrix $$ \sigma_i $$ (where $$ i = x, y, z $$ ), it satisfies the following equation:

$$
\sigma_i \ket{\psi} = \pm \ket{\psi}
$$

This means that applying the Pauli matrix $$ \sigma_i $$ to the vector $$ \ket{\psi} $$ leaves it unchanged, except for a scaling factor of $$ \pm 1 $$.
