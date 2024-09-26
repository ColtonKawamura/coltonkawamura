---
layout: post
title: Quantum References
date: 2020-09-28 11:12:00-0400
description: My most used quantum references
tags: quantum
categories: physics
---

# Slater Determinant

$$
\Psi(\mathbf{x}_1, \mathbf{x}_2, \dots, \mathbf{x}_N) = \frac{1}{\sqrt{N!}} 
\begin{vmatrix} 
\chi_1(\mathbf{x}_1) & \chi_2(\mathbf{x}_1) & \dots & \chi_N(\mathbf{x}_1) \\ 
\chi_1(\mathbf{x}_2) & \chi_2(\mathbf{x}_2) & \dots & \chi_N(\mathbf{x}_2) \\ 
\vdots & \vdots & \ddots & \vdots \\ 
\chi_1(\mathbf{x}_N) & \chi_2(\mathbf{x}_N) & \dots & \chi_N(\mathbf{x}_N) 
\end{vmatrix}
$$



# Eigenvector and Eigenvalues

Given a matrix $\mathbf{A}$, the eigenvector equation is:

$$
\mathbf{A} \mathbf{v} = \lambda \mathbf{v}
$$

Where:
- $\mathbf{A}$ is a square matrix.
- $\mathbf{v}$ is the eigenvector.
- $\lambda$ is the corresponding eigenvalue.

### Finding Eigenvalues:
To find the eigenvalues $\lambda$, solve the characteristic equation:

$$
\det(\mathbf{A} - \lambda \mathbf{I}) = 0
$$

### Finding Eigenvectors:
Once the eigenvalues are determined, substitute each $\lambda$ into the equation:

$$
(\mathbf{A} - \lambda \mathbf{I}) \mathbf{v} = 0
$$

Solve for the eigenvector $\mathbf{v}$.


