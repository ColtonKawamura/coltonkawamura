---
layout: post
title: How to Combine Two Plots in Matlab
date: 2024-05-01 00:32:13
description: How to Combine Two Figures in Matlab Including all the Data.
tags: matlab
categories: computing
---

Just replace your two figures for `f1` and `f2`.

```c++
% Define the two figure files that are on the MATLAB path
% These are the only "inputs" to this script
f1 = 'bi.fig';
f2 = 'poly.fig';

% Open the figures
fig1 = openfig(f1);
fig2 = openfig(f2);

% get axes handles - this assumes there is only 1 axes per figure!
fig1ax = gca(fig1);
fig2ax = gca(fig2);
leg1 = findobj(fig1,'Type','legend');
leg2 = findobj(fig2,'Type','legend');

% Get axis children
fig1axChildren = get(fig1ax,'Children');
fig2axChildren = get(fig2ax,'Children');

% Create new fig, copy items from fig 1
% This will maintain set properties such as color
figFinal = figure();
ax = axes(figFinal);
h1 = copyobj(fig1axChildren, ax);


% Copy items from fig 2
h2 = copyobj(fig2axChildren, ax);
set(gca, 'YScale', 'log')
set(gca, 'XScale', 'log')
grid on


% Add legend to same location as the legend in fig2 
% but only include objects with a defined DisplayName
h = [h2;h1];
hasDisplayName = ~cellfun('isempty',get(h,'DisplayName'));
legend(ax, h(hasDisplayName),'Location', leg1.Location, 'Interpreter', 'Latex')


% Copy axis labels
xlabel(ax, fig2ax.XLabel.String, 'Interpreter', 'Latex', 'FontSize', 20)
ylabel(ax, fig2ax.YLabel.String, 'Interpreter', 'Latex', 'FontSize', 20)
set(get(gca, 'ylabel'), 'rotation', 0);
```