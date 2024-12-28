---
layout: page
title: Problem 5.13 Taylor Classical Mechanics
description: Classical Mechanics by Taylor
importance: 2
category: solutions
giscus_comments: true
---

# Problem 5.13: Potential Energy and Small Oscillations

The potential energy of a one-dimensional mass \( m \) at a distance \( r \) from the origin is given as:

$$
U(r) = U_0 \left( \frac{r}{R} + \frac{\lambda^2 R}{r} \right),
$$

where \( U_0 \), \( R \), and \( \lambda \) are all positive constants. The task is to:

1. Find the equilibrium position \( r_0 \).
2. Show that for small displacements \( x \), the potential energy takes the form:
   $$
   U = \text{const} + \frac{1}{2}kx^2.
   $$
3. Determine the angular frequency of small oscillations.

---

## Finding Equilibrium Position \( r_0 \)

Equilibrium positions occur when the force is zero, which corresponds to:

$$
\frac{\partial U}{\partial r} = 0.
$$

Taking the derivative of \( U(r) \):

$$
\frac{\partial U}{\partial r} = U_0 \left( \frac{1}{R} - \lambda^2 R \frac{1}{r^2} \right).
$$

Setting this to zero:

$$
0 = \frac{1}{R} - \lambda^2 R \frac{1}{r^2},
$$

$$
r_0^2 = \lambda^2 R^2,
$$

$$
r_0 = \lambda R.
$$

Thus, the equilibrium position is:

$$
r_0 = \lambda R.
$$

---

## Showing Potential Energy Has the Form $$ U = \text{const} + \frac{1}{2}kx^2 $$

For small displacements $$ x $$, we expand $$ U(r) $$ about $$ r_0 $$. Let:

$$
r = r_0 + x.
$$

Substitute $$ r = r_0 + x $$ into the potential energy function:

$$
U(r) = U_0 \left( \frac{r_0 + x}{R} + \frac{\lambda^2 R}{r_0 + x} \right).
$$

Using $$ r_0 = \lambda R $$, this becomes:

$$
U(r) = U_0 \left( \frac{\lambda R + x}{R} + \frac{\lambda^2 R}{\lambda R + x} \right).
$$

Simplify:

$$
U(r) = U_0 \left( \lambda + \frac{x}{R} + \lambda^2 \frac{1}{\lambda + \frac{x}{R}} \right).
$$

Now expand the term $$ \frac{1}{\lambda + \frac{x}{R}} $$ using a Taylor expansion for small $$ x $$:

$$
\frac{1}{\lambda + \frac{x}{R}} \approx \frac{1}{\lambda} - \frac{x}{\lambda^2 R} + \frac{x^2}{\lambda^3 R^2}.
$$

Substitute this expansion back into $$ U(r) $$:

$$
U(r) \approx U_0 \left( \lambda + \frac{x}{R} + \lambda^2 \left( \frac{1}{\lambda} - \frac{x}{\lambda^2 R} + \frac{x^2}{\lambda^3 R^2} \right) \right).
$$

Simplify each term:

$$
U(r) \approx U_0 \left( \lambda + \frac{x}{R} + \lambda - \frac{x}{R} + \frac{x^2}{\lambda R^2} \right).
$$

Cancel terms:

$$
U(r) \approx U_0 \left( 2\lambda + \frac{x^2}{\lambda R^2} \right).
$$

The constant term is $$ 2\lambda U_0 $$, and the quadratic term is:

$$
\frac{1}{2}kx^2, \quad \text{where } k = \frac{2U_0}{\lambda R^2}.
$$

Thus:

$$
U(r) = \text{const} + \frac{1}{2}kx^2.
$$

---

## Angular Frequency of Small Oscillations

The angular frequency $$ \omega $$ is given by:

$$
\omega = \sqrt{\frac{k}{m}}.
$$

Substitute $$ k = \frac{2U_0}{\lambda R^2} $$:

$$
\omega = \sqrt{\frac{2U_0}{\lambda R^2 m}}.
$$

Thus, the angular frequency of small oscillations is:

$$
\omega = \sqrt{\frac{2U_0}{\lambda m R^2}}.
$$
