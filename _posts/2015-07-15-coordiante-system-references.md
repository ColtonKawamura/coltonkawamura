---
layout: post
title: Coordinate System References
date: 2015-07-15 15:09:00
description: Sphereical, Cartesian, and Cylindrical coordiante system relations.
tags: coordinate
categories: math
featured: true
---
# Spherical Coordinates
-
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

Cartesian to Cylindrical

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
