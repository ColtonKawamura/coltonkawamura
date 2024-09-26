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



# Eigenvector and Cross Product Operations

Given a matrix $\mathbf{A}$, the eigenvector equation is:

$$
\mathbf{A} \mathbf{v} = \lambda \mathbf{v}
$$

Where:
- $\mathbf{A}$ is a square matrix.
- $\mathbf{v}$ is the eigenvector.
- $\lambda$ is the corresponding eigenvalue.

### Step-by-Step Operations

1. **Find Eigenvalues**:
   To find the eigenvalues $\lambda$, solve the characteristic equation:
   
   $$
   \det(\mathbf{A} - \lambda \mathbf{I}) = 0
   $$

2. **Find Eigenvectors**:
   Once the eigenvalues are determined, substitute each $\lambda$ into the equation:

   $$
   (\mathbf{A} - \lambda \mathbf{I}) \mathbf{v} = 0
   $$

   Solve for the eigenvector $\mathbf{v}$.

3. **Cross Product Involving Eigenvectors**:
   Suppose you have two eigenvectors $\mathbf{v}_1$ and $\mathbf{v}_2$. Their cross product is given by:

   $$
   \mathbf{v}_1 \times \mathbf{v}_2 = \begin{vmatrix} \mathbf{i} & \mathbf{j} & \mathbf{k} \\ v_{1x} & v_{1y} & v_{1z} \\ v_{2x} & v_{2y} & v_{2z} \end{vmatrix}
   $$

   This results in a vector orthogonal to both $\mathbf{v}_1$ and $\mathbf{v}_2$.

### Example:
Given a matrix $\mathbf{A}$:

$$
\mathbf{A} = \begin{bmatrix} 2 & 1 & 0 \\ 1 & 2 & 0 \\ 0 & 0 & 3 \end{bmatrix}
$$

1. **Find Eigenvalues**:
   Solve the characteristic equation:

   $$
   \det(\mathbf{A} - \lambda \mathbf{I}) = 0
   $$

   $$
   \det\begin{bmatrix} 2 - \lambda & 1 & 0 \\ 1 & 2 - \lambda & 0 \\ 0 & 0 & 3 - \lambda \end{bmatrix} = 0
   $$

2. **Find Eigenvectors** for each eigenvalue $\lambda$ by solving the corresponding system of equations.
