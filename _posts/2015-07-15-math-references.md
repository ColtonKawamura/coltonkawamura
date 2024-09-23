---
layout: post
title: Math References
date: 2015-07-15 15:09:00
description: My most used math references.
tags: math
categories: physics
featured: true
---
# Spherical and Cylindrical Coordinates

## Spherical Coordinates

In spherical coordinates, the relationships between Cartesian and spherical variables are given by:

$$
x = r \sin \theta \cos \phi, \quad y = r \sin \theta \sin \phi, \quad z = r \cos \theta
$$

You can also express \(r\), \(\theta\), and \(\phi\) in terms of Cartesian coordinates:

$$
r = \sqrt{x^2 + y^2 + z^2}, \quad \theta = \tan^{-1} \left( \frac{\sqrt{x^2 + y^2}}{z} \right), \quad \phi = \tan^{-1} \left( \frac{y}{x} \right)
$$

For the unit vectors in spherical coordinates, we have:

$$
\hat{x} = \sin \theta \cos \phi \, \hat{r} + \cos \theta \cos \phi \, \hat{\theta} - \sin \phi \, \hat{\phi}
$$
$$
\hat{y} = \sin \theta \sin \phi \, \hat{r} + \cos \theta \sin \phi \, \hat{\theta} + \cos \phi \, \hat{\phi}
$$
$$
\hat{z} = \cos \theta \, \hat{r} - \sin \theta \, \hat{\theta}
$$

The reverse transformation for the unit vectors is:

$$
\hat{r} = \sin \theta \cos \phi \, \hat{x} + \sin \theta \sin \phi \, \hat{y} + \cos \theta \, \hat{z}
$$
$$
\hat{\theta} = \cos \theta \cos \phi \, \hat{x} + \cos \theta \sin \phi \, \hat{y} - \sin \theta \, \hat{z}
$$
$$
\hat{\phi} = -\sin \phi \, \hat{x} + \cos \phi \, \hat{y}
$$

## Cylindrical Coordinates

In cylindrical coordinates, the transformations are:

$$
x = s \cos \phi, \quad y = s \sin \phi, \quad z = z
$$

The reverse transformations are:

$$
s = \sqrt{x^2 + y^2}, \quad \phi = \tan^{-1} \left( \frac{y}{x} \right), \quad z = z
$$

The unit vectors in cylindrical coordinates are given by:

$$
\hat{x} = \cos \phi \, \hat{s} - \sin \phi \, \hat{\phi}, \quad \hat{y} = \sin \phi \, \hat{s} + \cos \phi \, \hat{\phi}, \quad \hat{z} = \hat{z}
$$

And for the reverse transformation:

$$
\hat{s} = \cos \phi \, \hat{x} + \sin \phi \, \hat{y}, \quad \hat{\phi} = -\sin \phi \, \hat{x} + \cos \phi \, \hat{y}, \quad \hat{z} = \hat{z}
$$
