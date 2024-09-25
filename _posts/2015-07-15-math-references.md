---
layout: post
title: Math References
date: 2015-07-15 15:09:00
description: My most used math references.
tags: math
categories: physics
featured: true
---
# Spherical Coordinates

### Cartesian to Spherical

$$
\begin{align*}
x = r \sin{\theta} \cos{\phi} \\
y = r \sin{\theta} \sin{\phi} \\
z = r \cos{\theta}
\end{align*}
$$
$$
\begin{align*}
\hat{x} = \sin{\theta} \cos{\phi} \, \hat{r} + \cos{\theta} \cos{\phi} \, \hat{\theta} - \sin{\phi} \, \hat{\phi} \\
\hat{y} = \sin{\theta} \sin{\phi} \, \hat{r} + \cos{\theta} \sin{\phi} \, \hat{\theta} + \cos{\phi} \, \hat{\phi} \\
\hat{z} = \cos{\theta} \, \hat{r} - \sin{\theta} \, \hat{\theta}
\end{align*}
$$

### Spherical to Cartesian

$$
\begin{align*}
r &= \sqrt{x^2 + y^2 + z^2} \\
\theta &= \tan^{-1} \left( \frac{\sqrt{x^2 + y^2}}{z} \right) \\
\phi &= \tan^{-1} \left( \frac{y}{x} \right)
\end{align*}
$$

$$
\begin{align*}
\hat{r} &= \sin{\theta} \cos{\phi} \, \hat{x} + \sin{\theta} \sin{\phi} \, \hat{y} + \cos{\theta} \, \hat{z} \\
\hat{\theta} &= \cos{\theta} \cos{\phi} \, \hat{x} + \cos{\theta} \sin{\phi} \, \hat{y} - \sin{\theta} \, \hat{z} \\
\hat{\phi} &= - \sin{\phi} \, \hat{x} + \cos{\phi} \, \hat{y}
\end{align*}
$$

# Cylindrical Coordinates

### Cartesian to Cylindrical
$$
\begin{align*}
x = s \cos{\phi} \\
y = s \sin{\phi} \\
z = z
\end{align*}
$$


$$
\begin{align*}
\hat{x} &= \cos{\phi} \, \hat{s} - \sin{\phi} \, \hat{\phi} \\
\hat{y} &= \sin{\phi} \, \hat{s} + \cos{\phi} \, \hat{\phi} \\
\hat{z} &= \hat{z}
\end{align*}
$$

### Cylindrical to Cartesian

$$
\begin{align*}
s &= \sqrt{x^2 + y^2} \\
\phi &= \tan^{-1} \left( \frac{y}{x} \right) \\
z &= z
\end{align*}
$$

$$
\begin{align*}
\hat{s} &= \cos{\phi} \, \hat{x} + \sin{\phi} \, \hat{y} \\
\hat{\phi} &= - \sin{\phi} \, \hat{x} + \cos{\phi} \, \hat{y} \\
\hat{z} &= \hat{z}
\end{align*}
$$

# Vector Derivatives

$$
\begin{aligned}
\text{Cartesian:} \quad dl &= dx \, \hat{x} + dy \, \hat{y} + dz \, \hat{z}; \quad d\tau = dx \, dy \, dz \\
\\
\text{Gradient:} \quad \nabla t &= \frac{\partial t}{\partial x} \, \hat{x} + \frac{\partial t}{\partial y} \, \hat{y} + \frac{\partial t}{\partial z} \, \hat{z} \\
\\
\text{Divergence:} \quad \nabla \cdot \mathbf{v} &= \frac{\partial v_x}{\partial x} + \frac{\partial v_y}{\partial y} + \frac{\partial v_z}{\partial z} \\
\\
\text{Curl:} \quad \nabla \times \mathbf{v} &= \left( \frac{\partial v_z}{\partial y} - \frac{\partial v_y}{\partial z} \right) \, \hat{x} + \left( \frac{\partial v_x}{\partial z} - \frac{\partial v_z}{\partial x} \right) \, \hat{y} + \left( \frac{\partial v_y}{\partial x} - \frac{\partial v_x}{\partial y} \right) \, \hat{z} \\
\\
\text{Laplacian:} \quad \nabla^2 t &= \frac{\partial^2 t}{\partial x^2} + \frac{\partial^2 t}{\partial y^2} + \frac{\partial^2 t}{\partial z^2}
\end{aligned}
$$
