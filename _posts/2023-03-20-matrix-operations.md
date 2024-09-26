---
layout: post
title: Matrix Operations
date: 2023-03-20 11:59:00-0400
description: A references for matrix operations that I use often.
tags: matrix
categories: math
---
# Cross Product of Two Vectors

Given two vectors:

$$
\mathbf{A} = \begin{bmatrix} a \\ b \\ c \end{bmatrix}, \quad \mathbf{B} = \begin{bmatrix} d \\ e \\ f \end{bmatrix}
$$

The cross product $\mathbf{A} \times \mathbf{B}$ is given by the determinant of a 3x3 matrix:

$$
\mathbf{A} \times \mathbf{B} = \begin{vmatrix} \hat{i} & \hat{j} & \hat{k} \\ a & b & c \\ d & e & f \end{vmatrix}
$$

### Components:

- **X-component**:
  $$
  \hat{i} \cdot \begin{vmatrix} b & c \\ e & f \end{vmatrix} = bf - ce
  $$

- **Y-component**:
  $$
  -\hat{j} \cdot \begin{vmatrix} a & c \\ d & f \end{vmatrix} = -(af - cd)
  $$

- **Z-component**:
  $$
  \hat{k} \cdot \begin{vmatrix} a & b \\ d & e \end{vmatrix} = ae - bd
  $$

### Resulting Vector:

$$
\mathbf{A} \times \mathbf{B} = \left( bf - ce, -(af - cd), ae - bd \right)
$$
