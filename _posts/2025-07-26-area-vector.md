---
title: "Vector Area and the Magdeburg Hemispheres"
date: 2025-07-26 16:20:00 -0400
math: true
categories: [Physics]
tags: [Advanced math, Calculus, Mechanics]
---

Before we go to the famous Magdeburg Hemispheres experiment, let's look at the vector definition of pressure and prove an identity.

## Pressure Definition:

$$
\vec{F} = p \vec{A} 
$$

---

## Vector Area of a Hemisphere

We aim to compute the **vector area** $$\vec{A}$$ of the **curved surface** of a hemisphere of radius $$R$$, centered at the origin and lying above the $$xy$$-plane.

---

### 1. Vector Area Definition

The **vector area** of a surface $$S$$ is defined as the surface integral:

$$
\vec{A} = \iint_S d\vec{A},
$$

where the **vector area element** is given by:

$$
d\vec{A} = \hat{n} \, dA,
$$

with:
- $$dA$$ being the scalar area of an infinitesimal surface patch,
- $$\hat{n}$$ the **unit normal vector** to the surface, pointing outward.

---

### 2. Spherical Coordinate Setup

We parameterize the hemisphere using **spherical coordinates**:

- Radius: $$r = R$$ (constant),
- Polar angle: $$\theta \in [0, \frac{\pi}{2}]$$,
- Azimuthal angle: $$\phi \in [0, 2\pi]$$.

The position vector at any point on the surface is:

$$
\vec{r}(\theta, \phi) = R \, \hat{r} = R \begin{bmatrix}
\sin\theta \cos\phi \\
\sin\theta \sin\phi \\
\cos\theta
\end{bmatrix}.
$$

---

### 3. Surface Area Element

The infinitesimal **scalar area element** on a sphere in spherical coordinates is:

$$
dA = R^2 \sin\theta \, d\theta \, d\phi.
$$

The **unit normal vector** to the surface is just the radial unit vector $$\hat{r}$$ (since we are on a sphere centered at the origin), so the **vector area element** is:

$$
d\vec{A} = \hat{r} \cdot R^2 \sin\theta \, d\theta \, d\phi.
$$

---

### 4. Taking the Integral

The total vector area is:

$$
\vec{A} = \iint_{\text{hemisphere}} \hat{r} \cdot R^2 \sin\theta \, d\theta \, d\phi.
$$

Since $$\hat{r}$$ depends on $$\theta$$ and $$\phi$$, we write it explicitly as:

$$
\hat{r}(\theta, \phi) = 
\begin{bmatrix}
\sin\theta \cos\phi \\
\sin\theta \sin\phi \\
\cos\theta
\end{bmatrix}.
$$

Substitute into the integral:

$$
\vec{A} = R^2 \int_0^{2\pi} \int_0^{\pi/2}
\begin{bmatrix}
\sin\theta \cos\phi \\
\sin\theta \sin\phi \\
\cos\theta
\end{bmatrix}
\sin\theta \, d\theta \, d\phi.
$$

---

### 5. Component-wise Integration

We now compute each component:

#### (a) $$x$$-component:

$$
A_x = R^2 \int_0^{2\pi} \int_0^{\pi/2} \sin^2\theta \cos\phi \, d\theta \, d\phi.
$$

Since:

$$
\int_0^{2\pi} \cos\phi \, d\phi = 0,
$$

we have:

$$
A_x = 0.
$$

#### (b) $$y$$-component:

$$
A_y = R^2 \int_0^{2\pi} \int_0^{\pi/2} \sin^2\theta \sin\phi \, d\theta \, d\phi.
$$

Since:

$$
\int_0^{2\pi} \sin\phi \, d\phi = 0,
$$

we have:

$$
A_y = 0.
$$

#### (c) $$z$$-component:

$$
A_z = R^2 \int_0^{2\pi} \int_0^{\pi/2} \cos\theta \sin\theta \, d\theta \, d\phi.
$$

Evaluate the inner integral:

Let $$u = \sin\theta \Rightarrow du = \cos\theta\, d\theta$$

Then:

$$
\int_0^{\pi/2} \cos\theta \sin\theta \, d\theta
= \int_0^1 u \, du = \left. \frac{u^2}{2} \right|_0^1 = \frac{1}{2}.
$$

Now evaluate the outer integral:

$$
\int_0^{2\pi} d\phi = 2\pi.
$$

So:

$$
A_z = R^2 \cdot \frac{1}{2} \cdot 2\pi = \pi R^2.
$$

---

Therefore we can conclude that $$A =  = \pi R^2$$.

---

## The Magdeburg Hemispheres

The Magdeburg hemispheres experiment, first performed in 1654 by German scientist and mayor **Otto von Guericke**, was a foundational demonstration of the force exerted by atmospheric pressure. Guericke developed one of the first vacuum pumps and used it to evacuate air from the space between two bronze hemispheres roughly 50 cm in diameter (which is fairly small). When the internal air was removed, two teams of eight horses were unable to pull the hemispheres apart.

This dramatic experiment offered one of the earliest proofs that **air pressure** is not negligible — but in fact capable of exerting substantial **macroscopic forces** when acting over a large enough surface area. It also served to challenge Aristotelian physics by suggesting that a vacuum could exist and could have measurable physical consequences.

The experiment provided an intuitive entry point into understanding pressure as **force per unit area** and led to further developments in fluid mechanics and thermodynamics.

---

## Quantitative Analysis of the experiment

Assume standard atmospheric pressure:

$$
P_{\text{atm}} \approx 1.013 \times 10^5 \, \text{Pa},
$$

and a hemisphere of radius:

$$
R = 0.25 \, \text{m}.
$$

Then:

$$
F = (1.013 \times 10^5) \cdot \pi \cdot (0.25)^2 \approx 1.99 \times 10^4 \, \text{N}.
$$

This is nearly **2 metric tons** of force, which explains why multiple horses on each side could not separate the hemispheres in Guericke's original demonstration.

<img src="{{ '/assets/img/magdeburg.png'| relative_url }}" alt="tih" class="framed-image" />
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

---

Hmmmm... Seems like this figure is ridiculously not to scale: remember that the radius of the sphere is only a quarter meter!

I'm gradually reaching the interface between mechanics and thermodynamics, which is pretty exciting. However there're still a couple of _completely arbitrary_ waves & oscillations chapters in between the two.




