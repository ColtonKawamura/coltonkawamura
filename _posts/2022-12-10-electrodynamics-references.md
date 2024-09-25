---
layout: post
title: Electrodynamics References
date: 2022-12-10 11:59:00-0400
description: My most used Electrodynamics references.
tags: electrodynamics
categories: physics
---

## Maxwell's Equations

### In General:

$$
\begin{aligned}
\nabla \cdot \mathbf{E} &= \frac{1}{\epsilon_0} \rho \\
\\
\nabla \times \mathbf{E} &= -\frac{\partial \mathbf{B}}{\partial t} \\
\\
\nabla \cdot \mathbf{B} &= 0 \\
\\
\nabla \times \mathbf{B} &= \mu_0 \mathbf{J} + \mu_0 \epsilon_0 \frac{\partial \mathbf{E}}{\partial t}
\end{aligned}
$$


### In Matter:

$$
\begin{aligned}
\nabla \cdot \mathbf{D} &= \rho_f \\
\\
\nabla \times \mathbf{E} &= -\frac{\partial \mathbf{B}}{\partial t} \\
\\
\nabla \cdot \mathbf{B} &= 0 \\
\\
\nabla \times \mathbf{H} &= \mathbf{J}_f + \frac{\partial \mathbf{D}}{\partial t}
\end{aligned}
$$


## Auxillary Fields:

$$
\mathbf{D} = \epsilon_0 \mathbf{E} + \mathbf{P}
$$

$$
\mathbf{H} = \frac{1}{\mu_0} \mathbf{B} - \mathbf{M}
$$

In Linear Media:

$$
\mathbf{P} = \epsilon_0 \chi_e \mathbf{E}, \quad \mathbf{D} = \epsilon \mathbf{E}
$$

$$
\mathbf{M} = \chi_m \mathbf{H}, \quad \mathbf{H} = \frac{1}{\mu} \mathbf{B}
$$


## Potentials

$$
\mathbf{E} = -\nabla V - \frac{\partial \mathbf{A}}{\partial t}, \quad \mathbf{B} = \nabla \times \mathbf{A}
$$

## Lorentz Force Law

$$
\mathbf{F} = q (\mathbf{E} + \mathbf{v} \times \mathbf{B})
$$


## Energy, Momentum, and Power

Energy:  $$ \quad U = \frac{1}{2} \int \left( \epsilon_0 E^2 + \frac{1}{\mu_0} B^2 \right) d\tau $$

Momentum: $$ \quad \mathbf{P} = \epsilon_0 \int (\mathbf{E} \times \mathbf{B}) \, d\tau $$

Poynting Vector (Power per Area): $$ \quad \mathbf{S} = \frac{1}{\mu_0} (\mathbf{E} \times \mathbf{B}) $$ 

Larmor: $$ \quad P = \frac{\mu_0}{6 \pi c} q^2 a^2 $$