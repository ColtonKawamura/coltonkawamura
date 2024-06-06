---
layout: post
title: How to use the Granular Mechanics Fourier Transform function for Simulations.
date: 2024-06-06 13:49:28
description: How to use my process_gm_fft.m function for granular mechanics simiulations.
tags: 
categories: computational
thumbnail: assets/img/gmfft.png
featured: false
disqus_comments: false
related_posts: true
---

First, head over to [my MATLAB GM repository](https://gitlab.nps.edu/colton.kawamura1/MATLAB-Oscillations) in the ```Functions``` clone/pull/download the ```process_gm_fft.m``` file.

In your IDE of choice, open it and read through the preamble. It'll explain what variables you need to put in, and what variables it spits out.

To call the function properly from your simulation script, you need to do three steps:

1. Change the variables you have your simulation to match those of the function input.
2. Call the function with those variables.
3. Save the output variables to whatever you want for your choice.

Let's break down each step as they appear in my simulation code:

1. Change variables.
- Make sure the add a path to where the ```process_gm_fft.m``` function is sitting. For me, it's in the ```Functions``` folder, which is one directory up from where my simulation is.

```MATLAB
%%% ACTUAL SIMULATION UP HERE %%%

% Add the path to the "functions" directory
addpath('../Functions')
```
- In this simulation, the actual granular mechanics simulation was written by someone else so I need to change the variables to fit my function.
```MATLAB
% Convert simulation variables to meet function convention
time_vector = (1:Nt)*dt;
[~,index_particles] = sort(x0);
index_oscillating_wall = left_wall_list;
driving_frequency = w_D/6.2832;
driving_amplitude=A;
position_particles = x_all;
initial_distance_from_oscillation = x0;
```

2. Use these variables to call the function
```MATLAB
% Perform fft fitting
[fitted_attenuation, wavenumber, wavespeed, attenuation_fit_line, initial_distance_from_oscillation_output, amplitude_vector] = ...
process_gm_fft(driving_amplitude, time_vector, index_particles, index_oscillating_wall, driving_frequency, position_particles, initial_distance_from_oscillation);
```
3. We have generalized outputs ```fitted_attenuation, wavenumber, wavespeed, attenuation_fit_line, initial_distance_from_oscillation_output, amplitude_vector```. We'll need to change these if we're going to analyze another direction (I'll get into this later.)
```MATLAB
attenuation_x = fitted_attenuation;
attenuation_fit_line_x = attenuation_fit_line;
wavenumber_x = wavenumber;
wavespeed_x = wavespeed;
initial_distance_from_oscillation_output_x_fft = initial_distance_from_oscillation_output;
amplitude_vector_x = amplitude_vector;
```

That's it! Here's what the entire post-processing for forming the function in the x-direction with a wall oscillating in the x-direction:
```MATLAB
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % X Direction Post Processing
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Add the path to the "functions" directory
addpath('../Functions')

% Convert simulation variables to meet function convention
time_vector = (1:Nt)*dt;
[~,index_particles] = sort(x0);
index_oscillating_wall = left_wall_list;
driving_frequency = w_D/6.2832;
driving_amplitude=A;
position_particles = x_all;
initial_distance_from_oscillation = x0;

% Perform fft fitting
[fitted_attenuation, wavenumber, wavespeed, attenuation_fit_line, initial_distance_from_oscillation_output, amplitude_vector] = ...
process_gm_fft(driving_amplitude, time_vector, index_particles, index_oscillating_wall, driving_frequency, position_particles, initial_distance_from_oscillation);

attenuation_x = fitted_attenuation;
attenuation_fit_line_x = attenuation_fit_line;
wavenumber_x = wavenumber;
wavespeed_x = wavespeed;
initial_distance_from_oscillation_output_x_fft = initial_distance_from_oscillation_output;
amplitude_vector_x = amplitude_vector;
```

Now, if we wanted to analyze the attenuation in an orthogonal direction to the wave, say the y-direction, we just adjust the ```position_particles``` vector we input. Remember, we keep ```initial_distance_from_oscillation = x0;``` the same since the wave is traveling in the x-direction. Here's how it would look like:
```MATLAB
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Y Direction Post Processing
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Convert simulation variables to meet function convention
time_vector = (1:Nt)*dt;
index_oscillating_wall = left_wall_list;
driving_amplitude=A;
[~,index_particles] = sort(y0);
position_particles = y_all;
initial_distance_from_oscillation = x0;
driving_frequency = w_D/6.2832;

% Perform fft fitting
[fitted_attenuation, wavenumber, wavespeed, attenuation_fit_line, initial_distance_from_oscillation_output, amplitude_vector] = ...
process_gm_fft(driving_amplitude, time_vector, index_particles, index_oscillating_wall, driving_frequency, position_particles, initial_distance_from_oscillation);

attenuation_y = fitted_attenuation;
attenuation_fit_line_y = attenuation_fit_line;
wavenumber_y = wavenumber;
wavespeed_y = wavespeed;
initial_distance_from_oscillation_output_y_fft = initial_distance_from_oscillation_output;
amplitude_vector_y = amplitude_vector;
```

***

<script src="https://giscus.app/client.js"
        data-repo="coltonkawamura/coltonkawamura"
        data-repo-id="R_kgDOKjP3YQ"
        data-category="comments"
        data-category-id="DIC_kwDOKjP3Yc4CaV1i"
        data-mapping="pathname"
        data-strict="0"
        data-reactions-enabled="1"
        data-emit-metadata="0"
        data-input-position="top"
        data-theme="dark"
        data-lang="en"
        data-loading="lazy"
        crossorigin="anonymous"
        async>
</script>
