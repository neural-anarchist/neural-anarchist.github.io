---
title: "Qualitative Understanding vs Quantitative Understanding"
date: 2026-01-28 17:30:00 -0400
math: true
categories: [Physics]
tags: [Mechanics, Calculus]
---

First physics post for the year! 

The problem is inspired by F=ma 2015 P22, and in fact, it is basically the same problem, but with a complete quantitative analysis:

## Problem

A rigid object of mass $m$ and radius $R$ slides down an incline of angle $\theta$ through a fixed vertical drop $h$.
The coefficients of static and kinetic friction are equal: $\mu_s=\mu_k=\mu$.
The moment of inertia is $I=\beta mR^2$.

Find the total kinetic energy $K(\theta)$ at the bottom.

---

## Solution (Qualitative)

We do qualitative case work (essentially all we need for F=ma):

- When the slope is small, the friction force is great enough to make angular acceleration as great as linear acceleration along the slope, thus the object rolls without slipping, hence no external work dissipates total mechanical energy.

- If the slope gets larger, however, the angular acceleration due to friction torque gets significantly less than the linear acceleration along the slop, inevitably leading to slipping while rolling, therefore friction does work on the object.

- If the angle reaches $\theta=\pi/2$, $0$ normal force induces $0$ friction, and mechanical energy is conserved.

Combining the above, we have graphically:
<img src="{{ '/assets/img/15p22.png'| relative_url }}" alt="rfs" class="framed-image" />
<style>
  .framed-image {
    display: block;
    margin: 2rem auto;
    max-width: 90%;
    border: 4px solid #ccc;
    border-radius: 12px;
    box-shadow: 0 4px 16px rgba(0, 0, 0, 0.2);
  }
</style>

### Remark:

The qualitative part of this problem is quite straightforward, and the graphic interpretation tested on the actual exam might even be considered a bit "boring", directly solvable by thinking about limiting cases.

Nonetheless, what would happen if we attempt to solve for $K(\theta)$ quantitatively? Does it have an analytical solution?

## Solution (Quantitative)

### Before reaching the critical angle: Rolling without slipping

Equations:

$$
mg\sin\theta - f = ma
$$
$$
fR = I\alpha = \beta mR^2 \frac{a}{R}
$$
so $f=\beta ma$.

Thus

$$
mg\sin\theta = (1+\beta)ma
\Rightarrow
a=\frac{g\sin\theta}{1+\beta}.
$$

Then

$$
f=\frac{\beta}{1+\beta}mg\sin\theta.
$$

Require $f\le\mu mg\cos\theta$:

$$
\tan\theta \le \frac{1+\beta}{\beta}\mu.
$$

Hence

$$
\tan\theta_c=\frac{1+\beta}{\beta}\mu. 
$$


For $\theta\le\theta_c$, static friction does no work:

$$
K(\theta)=mgh.
$$

---

### Beyong the critical angle: Slipping

For $\theta>\theta_c$, kinetic friction

$$
f_k=\mu mg\cos\theta.
$$

Translation:

$$
a=g(\sin\theta-\mu\cos\theta).
$$

Rotation:

$$
\alpha=\frac{f_kR}{I}=\frac{\mu g\cos\theta}{\beta R}.
$$

Slip speed at contact:

$$
u=v-\omega R.
$$

Then

$$
\dot u=a-\alpha R
=g\left(\sin\theta-\frac{1+\beta}{\beta}\mu\cos\theta\right).
$$

Energy lost:

$$
W_{\text{loss}}=\int f_k u\,dt.
$$

Since $\dot u$ is constant and $u(0)=0$,

$$
\int_0^T u\,dt=\frac12\dot u\,T^2.
$$

Distance along plane:

$$
L=\frac{h}{\sin\theta}=\frac12 aT^2
\Rightarrow
T^2=\frac{2L}{a}.
$$

Thus

$$
W_{\text{loss}}=f_k\frac{\dot u L}{a}
=\mu mgh\frac{\cos\theta}{\sin\theta}
\frac{\sin\theta-\frac{1+\beta}{\beta}\mu\cos\theta}
{\sin\theta-\mu\cos\theta}.
$$

Hence

$$
K(\theta)=mgh-
\mu mgh\frac{\cos\theta}{\sin\theta}
\frac{\sin\theta-\frac{1+\beta}{\beta}\mu\cos\theta}
{\sin\theta-\mu\cos\theta},
\quad \theta>\theta_c.
$$

---


$$
K(\theta)=
\begin{cases}
mgh, & \tan\theta\le \dfrac{1+\beta}{\beta}\mu,\\[6pt]
mgh-
\mu mgh\dfrac{\cos\theta}{\sin\theta}
\dfrac{\sin\theta-\frac{1+\beta}{\beta}\mu\cos\theta}
{\sin\theta-\mu\cos\theta},
& \tan\theta> \dfrac{1+\beta}{\beta}\mu.
\end{cases}
$$

$K=mgh$ up to $\theta_c$, then decreases, reaches a minimum, and increases back toward $mgh$ as $\theta\to90^\circ$.

Lastly I feel obligated to lament the computational complexity of the quantitative solution!

---

