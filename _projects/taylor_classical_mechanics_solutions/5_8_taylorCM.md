---
layout: page
title: Problem 5.8
description: Classical Mechanics by Taylor
importance: 2
category: work
giscus_comments: true
---

# Part a

We are given mass $m$ and $k$ and solving for $\omega$, $f$, and $\tau$ which are all related, so we might as well start by solving for $\omega$. We know that we can get $\omega$ with,

$$ \omega^2 = \frac{k}{m}.$$

And then get $f$ with,

$$ f= \frac{2 \pi}{\omega}.$$

Then get the period by

$$\tau = \frac{1}{f}.$$


# Part b

When the initial position $x(t) = 0$,

$$ 0 = A \cos (0 - \delta).$$

Since $A \neq 0$ (it's oscillating!), the above relation is only true when 

$$ 0 = \cos(\delta)$$

because $\cos$ is even. This only happens when $\delta = \pm n \pi /2$.

With initial velocity is $v_0$,

$$ v_0 = -A\omega\sin(0-\delta)$$

and since $\sin$ is odd, the $-$ can move out of the function to make

$$ v_0 = +A\omega\sin(\delta)$$

We know what $\delta$ is now, so let's solve for $A$. Since $\sin(\pm n \pi / 2) = \pm 1$, 

$$ v_0 = \pm A\omega.$$

But we were given a positive initial velocity, so our that means,

$$ A = \frac{v_0}{\omega}, $$

and we choose the positive $\delta$,

$$ \delta = \frac{ n \pi }{2}.$$







