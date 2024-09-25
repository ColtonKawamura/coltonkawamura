---
layout: post
title: Vector Identities
date: 2022-02-01 17:39:00
description: My most used vector identities
tags: derivatives
categories: math
---

### Triple Products

$$
\mathbf{A} \cdot (\mathbf{B} \times \mathbf{C}) = \mathbf{B} \cdot (\mathbf{C} \times \mathbf{A}) = \mathbf{C} \cdot (\mathbf{A} \times \mathbf{B})
$$

$$
\mathbf{A} \times (\mathbf{B} \times \mathbf{C}) = \mathbf{B}(\mathbf{A} \cdot \mathbf{C}) - \mathbf{C}(\mathbf{A} \cdot \mathbf{B})
$$

### Product Rules

$$
\begin{aligned}
\nabla (fg) &= f (\nabla g) + g (\nabla f) \\
\\
\nabla (\mathbf{A} \cdot \mathbf{B}) &= \mathbf{A} \times (\nabla \times \mathbf{B}) + \mathbf{B} \times (\nabla \times \mathbf{A}) + (\mathbf{A} \cdot \nabla) \mathbf{B} + (\mathbf{B} \cdot \nabla) \mathbf{A} \\
\\
\nabla \cdot (f \mathbf{A}) &= f (\nabla \cdot \mathbf{A}) + \mathbf{A} \cdot (\nabla f) \\
\\
\nabla \cdot (\mathbf{A} \times \mathbf{B}) &= \mathbf{B} \cdot (\nabla \times \mathbf{A}) - \mathbf{A} \cdot (\nabla \times \mathbf{B}) \\
\\
\nabla \times (f \mathbf{A}) &= f (\nabla \times \mathbf{A}) - \mathbf{A} \times (\nabla f) \\
\\
\nabla \times (\mathbf{A} \times \mathbf{B}) &= (\mathbf{B} \cdot \nabla) \mathbf{A} - (\mathbf{A} \cdot \nabla) \mathbf{B} - \mathbf{B} (\nabla \cdot \mathbf{A}) + \mathbf{A} (\nabla \cdot \mathbf{B})
\end{aligned}
$$

### Second Derivatives

$$
\begin{aligned}
\nabla \cdot (\nabla \times \mathbf{A}) &= 0 \\
\\
\nabla \times (\nabla f) &= 0 \\
\\
\nabla \times (\nabla \times \mathbf{A}) &= \nabla (\nabla \cdot \mathbf{A}) - \nabla^2 \mathbf{A}
\end{aligned}
$$

### Fundamental Theorems

Gradient Theorem: $$ \quad &\int_a^b (\nabla f) \cdot d\mathbf{l} = f(b) - f(a) $$

Divergence Theorem: $$ \quad &\int (\nabla \cdot \mathbf{A}) \, d\tau = \oint \mathbf{A} \cdot d\mathbf{a} $$

Curl Theorem: $$ \quad &\int (\nabla \times \mathbf{A}) \cdot d\mathbf{a} = \oint \mathbf{A} \cdot d\mathbf{l} $$