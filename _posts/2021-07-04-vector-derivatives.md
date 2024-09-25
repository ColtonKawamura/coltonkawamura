---
layout: post
title: Vector Derivatives
date: 2021-07-04 17:39:00
description: My most used vector derivatives.
tags: derivatives
categories: math
---

### Cartesian

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


### Spherical

$$
\begin{aligned}
\text{Spherical:} \quad dl &= dr \, \hat{r} + r \, d\theta \, \hat{\theta} + r \sin{\theta} \, d\phi \, \hat{\phi}; \quad d\tau = r^2 \sin{\theta} \, dr \, d\theta \, d\phi \\
\\
\text{Gradient:} \quad \nabla t &= \frac{\partial t}{\partial r} \, \hat{r} + \frac{1}{r} \frac{\partial t}{\partial \theta} \, \hat{\theta} + \frac{1}{r \sin{\theta}} \frac{\partial t}{\partial \phi} \, \hat{\phi} \\
\\
\text{Divergence:} \quad \nabla \cdot \mathbf{v} &= \frac{1}{r^2} \frac{\partial}{\partial r} \left( r^2 v_r \right) + \frac{1}{r \sin{\theta}} \frac{\partial}{\partial \theta} \left( \sin{\theta} v_\theta \right) + \frac{1}{r \sin{\theta}} \frac{\partial v_\phi}{\partial \phi} \\
\\
\text{Curl:} \quad \nabla \times \mathbf{v} &= \frac{1}{r \sin{\theta}} \left[ \frac{\partial}{\partial \theta} \left( \sin{\theta} v_\phi \right) - \frac{\partial v_\theta}{\partial \phi} \right] \, \hat{r} \\
&+ \frac{1}{r} \left[ \frac{1}{\sin{\theta}} \frac{\partial v_r}{\partial \phi} - \frac{\partial}{\partial r} \left( r v_\phi \right) \right] \, \hat{\theta} \\
&+ \frac{1}{r} \left[ \frac{\partial}{\partial r} \left( r v_\theta \right) - \frac{\partial v_r}{\partial \theta} \right] \, \hat{\phi} \\
\\
\text{Laplacian:} \quad \nabla^2 t &= \frac{1}{r^2} \frac{\partial}{\partial r} \left( r^2 \frac{\partial t}{\partial r} \right) + \frac{1}{r^2 \sin{\theta}} \frac{\partial}{\partial \theta} \left( \sin{\theta} \frac{\partial t}{\partial \theta} \right) + \frac{1}{r^2 \sin^2{\theta}} \frac{\partial^2 t}{\partial \phi^2}
\end{aligned}
$$

### Cylindrical

$$
\begin{aligned}
\text{Cylindrical:} \quad dl &= ds \, \hat{s} + s \, d\phi \, \hat{\phi} + dz \, \hat{z}; \quad d\tau = s \, ds \, d\phi \, dz \\
\\
\text{Gradient:} \quad \nabla t &= \frac{\partial t}{\partial s} \, \hat{s} + \frac{1}{s} \frac{\partial t}{\partial \phi} \, \hat{\phi} + \frac{\partial t}{\partial z} \, \hat{z} \\
\\
\text{Divergence:} \quad \nabla \cdot \mathbf{v} &= \frac{1}{s} \frac{\partial}{\partial s} \left( s v_s \right) + \frac{1}{s} \frac{\partial v_\phi}{\partial \phi} + \frac{\partial v_z}{\partial z} \\
\\
\text{Curl:} \quad \nabla \times \mathbf{v} &= \left[ \frac{1}{s} \frac{\partial v_z}{\partial \phi} - \frac{\partial v_\phi}{\partial z} \right] \, \hat{s} + \left[ \frac{\partial v_s}{\partial z} - \frac{\partial v_z}{\partial s} \right] \, \hat{\phi} \\
&+ \frac{1}{s} \left[ \frac{\partial}{\partial s} \left( s v_\phi \right) - \frac{\partial v_s}{\partial \phi} \right] \, \hat{z} \\
\\
\text{Laplacian:} \quad \nabla^2 t &= \frac{1}{s} \frac{\partial}{\partial s} \left( s \frac{\partial t}{\partial s} \right) + \frac{1}{s^2} \frac{\partial^2 t}{\partial \phi^2} + \frac{\partial^2 t}{\partial z^2}
\end{aligned}
$$
