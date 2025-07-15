---
title: "Mad Mechanics Problem 5"
date: 2025-07-15 14:50:00 -0400
math: true
categories: [Physics]
tags: [Alg, Mechanics, Calculus]
---

Finally, I encountered a physics problem which I can solve intuitively using some math tricks that people use a lot in math olympiads to solve!


## Problem: Optimal Mass for Maximum Energy Transfer in Sequential Collisions

Consider three masses aligned on a frictionless horizontal surface: a mass $$m$$ moving at initial speed $$v_0$$, followed by a stationary mass $$m'$$, and a final stationary mass $$M$$. The mass $$m$$ collides with $$m'$$, and then $$m'$$ collides with $$M$$. All collisions are assumed to be perfectly elastic.

Determine the value of $$m'$$ that maximizes the final kinetic energy of mass $$M$$ after these two collisions.

---


## Solution: Physical Bounds on Velocity Transfer

We begin by analyzing the **range of possible velocities** for each collision, based on momentum conservation. Also note that we can treat $m$ and $M$ as constants here, since we only need the optimal $m'$. If they are also variable, the solution will be trivial as each collision should be elastic and the three masses should be equal.

### First Collision: $$m$$ hits $$m'$$

Let the final velocity of $$m'$$ after the first collision be $$v'$$. Using momentum conservation:

- If the collision is **completely inelastic** (they stick together), then:
  $$
  v' = \frac{m v_0}{m + m'}
  $$
  
- If the collision is **completely elastic**, then:
  $$
  v' = \frac{2m v_0}{m + m'}
  $$

So, in general:
$$
\frac{m v_0}{m + m'} \leq v' \leq \frac{2m v_0}{m + m'}
$$

### Second Collision: $$m'$$ hits $$M$$

Let the final velocity of $$M$$ be $$V$$. Again using momentum conservation:

- Minimum (completely inelastic):
  $$
  V = \frac{m' v'}{m' + M}
  $$
  
- Maximum (completely elastic):
  $$
  V = \frac{2m' v'}{m' + M}
  $$

So:
$$
\frac{m' v'}{m' + M} \leq V \leq \frac{2m' v'}{m' + M}
$$

### Observation:

To maximize the final velocity (or kinetic energy) of $$M$$, we must maximize $$V$$, which leads to maximizing $$v'$$ as well.

Thus, we assume **both collisions are perfectly elastic**, which gives:

- From first collision:
  $$
  v' = \frac{2m v_0}{m + m'}
  $$
  
- From second collision:
  $$
  V = \frac{2m' v'}{m' + M}
  = \frac{2m'}{m' + M} \cdot \frac{2m v_0}{m + m'} = \frac{4m'm v_0}{(m + m')(m' + M)}
  $$

---

From here on, there are two approaches, this first one is boring as it involves some lame calculus...


### Solution 1: Calculus-Based


#### First Collision — $$m$$ and $$m'$$

For a perfectly elastic collision, the final velocity of $$m'$$ after being hit by $$m$$ is:

$$
v' = \frac{2mv_0}{m + m'}
$$

#### Second Collision — $$m'$$ and $$M$$

Again using elastic collision formulas, the final velocity of $$M$$ is:

$$
V = \frac{2m'v'}{m' + M}
= \frac{2m'}{m' + M} \cdot \frac{2mv_0}{m + m'}
= \frac{4m'mv_0}{(m' + M)(m + m')}
$$

We seek to maximize $$V$$ with respect to $$m'$$. Let:

$$
f(m') = \frac{4m'mv_0}{(m' + M)(m + m')}
$$

Since $$m, M, v_0$$ are constants, define the scaled function:

$$
f(m') \propto \frac{m'}{(m' + M)(m' + m)}
$$

Take the derivative with respect to $$m'$$:

Let
$$
f(m') = \frac{m'}{(m' + m)(m' + M)}
$$

Then
$$
f'(m') = \frac{(m' + m)(m' + M) - m'( (m' + m)'(m' + M) + (m' + m)(m' + M)' ) }{[(m' + m)(m' + M)]^2}
$$

Simplifying the numerator we get:

$$
\begin{aligned}
-m'^2 + mM
\end{aligned}
$$

Setting the derivative to zero:

$$
f'(m') = 0 \Rightarrow -m'^2 + mM = 0 \Rightarrow m' = \sqrt{mM}
$$

#### Final Answer:
$$
\boxed{m' = \sqrt{mM}}
$$


---


Alternatively, I came up with this perfectly rigorous solution that somehow didn't even appear on the solutions manual (assuming no negative masses lol).

### Solution 2: Using the AM–GM Inequality

We aim to maximize the same function:

$$
f(m') = \frac{m'}{(m + m')(m' + M)}
$$

Instead of maximizing directly, minimize its reciprocal:

$$
\frac{1}{f(m')} = \frac{(m + m')(m' + M)}{m'}
$$

Expand the numerator:

$$
\frac{(m + m')(m' + M)}{m'} = \frac{mm' + mM + m'^2 + m'M}{m'} = m + M + m' + \frac{mM}{m'}
$$

Thus,

$$
\frac{1}{f(m')} = m + M + m' + \frac{mM}{m'}
$$

Since $m$ and $M$ are treated as constants, we only need to minimize:

$$
g(m') = m' + \frac{mM}{m'}
$$

Apply the AM–GM inequality:

$$
g(m') = m' + \frac{mM}{m'} \geq 2\sqrt{mM}
$$

Equality holds when:

$$
m' = \sqrt{mM}
$$

Therefore, this value of $$m'$$ minimizes the reciprocal of the original function, and hence maximizes $$f(m')$$.

#### Final Answer:
$$
\boxed{m' = \sqrt{mM}}
$$

### This is known as *Elegance*!
---
Additional note: this is a cool chain-of-collisions problem, feel free to generalize it into collisions between n balls, you can do the same analytics for any one of them and acheive some sort of geometric mean similar to this problem. If all balls have the same mass, it would look like somewhat like this:

<div style="text-align: center;">
  <iframe width="560" height="315" 
    src="https://www.youtube.com/embed/0LnbyjOyEQ8" 
    title="YouTube video player" frameborder="0" 
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
    allowfullscreen>
  </iframe>
</div>

Although the actual theory behind the Newton's Cradle is unexpectedly complex and involves pressure waves, we can still see this problem as an overly simplified case, and I hope this video provides helpful visualization.