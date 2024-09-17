---
title: Fuel efficiency and the magic of SI
date: 2024-09-09
...

I love a good consistent set of units; they are easier to reason about, and are
far more amenable to interesting dimensional analysis. Interpreting fuel
efficiency as an area is a particularly neat one for its interpretability.

Fuel efficiency---commonly measured in litres per 100 kilometers---is volume
divided distance, which can be interpreted as an area. The interpretation of
this area is the following situation: Consider a vehicle an empty tank that has
a long tube of fuel along its intended travel path. Then its fuel efficiency is
the cross-sectional area of that tube that the vehicle must consume as it
travels by.

<!--teaser-->

This observation is not new, but every time I remember this fact, it takes a
moment to compute the precise units. So I am writing it down here:

```math
\frac{\mathrm{L}}{100\mathrm{km}} = \frac{(10^{-2})^3\mathrm{m}^3}{10^5 \mathrm{m}} =
\frac{10^{3}\mathrm{mm}^3}{10^5 \mathrm{m}} = 10^{-2}\mathrm{m}^2
```

Since $10^{-2}$ is simply one percent, whenever you hear a fuel efficiency
listed in litres per 100 kilometres, you can think of this as "the percentage of
a square-sided tube of fuel with one millimetre sides the vehicle would consume
as it travels."

I want to stress that this would be far less convoluted if we stuck with just SI
units: One litre per kilometre is _exactly_ a square millimetre! Alas, the
preference seems to be working with quantities in $[0 .. 100]$ rather than
$[0 .. 1]$.
