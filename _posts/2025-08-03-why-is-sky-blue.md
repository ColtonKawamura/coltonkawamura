---
layout: post
title: Why is the Sky Blue?
date: 2025-08-03 21:01:00
description: It's not because of gnomes.
tags: teaching
categories: physics
thumbnail: assets/img/radiation_movement.gif
---
After light from the sun makes its lonely journey to earth, it strikes our upper atmosphere with a spectrum strongest in yellow, red, green, and blue.

{% include figure.liquid path="assets/img/light_spectrum.jpg" class="img-fluid rounded z-depth-1" zoomable=true %}

As light moves through the atmosphere, it radiates the nitrogen and oxygen molecules. The electric field component of the electromagnetic radiation pulls the electrons in one direction and pushes the positively charged nuclei to the other. This process creates a tiny induced dipole.

{% include figure.liquid path="assets/img/induced_dipole.jpg" class="img-fluid rounded z-depth-1" zoomable=true %}

The light wave continues through the atmosphere and causes the induced dipoles in the atmosphere to oscillate like a cork floating on water as a wave goes by.

The difference is that light waves, unlike the water waves which are restricted to moving the cork in one direction, can be polarized in any direction perpendicular to the direction of travel. This is much like tying a rope to a wall on one end and holding the other. You can shake the rope particles in any direction perpendicular to the length of the rope, but not significantly in the longitudinal direction.

{% include figure.liquid path="assets/img/polarized_wave.jpg" class="img-fluid rounded z-depth-1" zoomable=true %}

When dipoles oscillate, they act like tiny transmitting antennas and radiate their own electromagnetic waves. This phenomena hinges on the fact that the charges on either side of the dipoles have their own electric field lines that extend to infinity.

When charges oscillate, they are accelerated. Due to this acceleration, the electric fields must change with time as well. But this “disturbance” in the electric field can’t instantly change the electric field everywhere — it’s upper limit is the speed of light.

Consequently, as described by Maxwell’s equations, changes in the electric fields over time produce a magnetic field. The new magnetic field produces a new electric field and thus, electromagnetic radiation is emitted from the vibrating particle. For comparison, consider what happens when you drop a pebble into a still pond. The pebble will create a brief disturbance in water causing the water surface to be driven up and down. Waves will emanate away from the disturbance point and transfer energy away. Oscillating dipoles and their radiation act very similarly.

{% include figure.liquid path="assets/img/radiation_movement.gif" class="img-fluid rounded z-depth-1" zoomable=true %}

The dominating color of the multi-frequency radiation from the particle is determined by the most intense color frequency in the spectrum. Since intensity is the amount of power transferred per unit area around the dipole, the Poynting vector S can be used to determine the energy per unit area radiated from the dipole’s induced electric and magnetic fields,


After averaging the Poynting vector over a complete cycle of oscillation ⟨S⟩, the intensity of the radiation is obtained,


Of all the terms in the result, intensity is most dependent on frequency ω . Since the sun’s rays contain a broad range of visible frequencies, they are all radiated. However, the colors with higher frequencies will be radiated more intensely since the ω term dominates. This causes blue and violet colors to be the most visible colors. However, since the sun’s original spectrum is stronger in blue than violet, and for physiological reasons, the hue is interpreted by our brains as blue and white. Leading to the pale blue sky color.
