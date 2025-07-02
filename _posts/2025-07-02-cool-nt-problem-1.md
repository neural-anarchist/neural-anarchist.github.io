---
title: "Cool Number Theory Problem 1"
date: 2025-07-02 08:53:00 +0800
math: true
categories: [Math]
tags: [NT]
---


## Problem

Let $$m$$ and $$n$$ be integers such that $$1 \leq m \leq 49$$ and $$n \geq 0$$. Suppose
$$
m \mid n^{n+1} + 1.
$$
How many such integers $$m$$ are possible?

(Source: 2014 HMMT Nov General Round P10)

---

## Solution

We seek the number of integers $$m \leq 49$$ such that there exists a nonnegative integer $$n$$ with
$$
m \mid n^{n+1} + 1.
$$
Equivalently, for some $$n \geq 0$$, we have the congruence
$$
n^{n+1} \equiv -1 \pmod{m}.
$$

We divide the analysis based on the parity of $$n$$.

---

### Case 1: $$n$$ is even

Suppose $$n$$ is even, so write $$n = 2k$$ for some integer $$k \geq 0$$. Then $$n + 1$$ is odd. We consider the expression

$$
n^{n+1} + 1 = (2k)^{2k + 1} + 1.
$$

Here, the identity

$$
x^{2k+1} + 1 = (x + 1)(x^{2k} - x^{2k-1} + \dots + 1)
$$

applies. So we have

$$
n + 1 \mid n^{n+1} + 1.
$$

Therefore, for every even integer $$n$$, the corresponding odd integer $$m = n + 1$$ divides $$n^{n+1} + 1$$.

This means that **every odd number $$m$$ can appear** as a valid divisor by simply setting
$$
n = m - 1,
$$
which is even, and gives
$$
m = n + 1 \mid n^{n+1} + 1.
$$

Thus, **every odd integer $$m \leq 49$$** is a valid solution. These are:
$$
1, 3, 5, 7, \dots, 49,
$$
a total of $25$
values.

---

### Case 2: $$n$$ is odd


Suppose $$n$$ is odd, and $$m \mid n^{n+1} + 1$$. Then we have:
$$
n^{n+1} \equiv -1 \pmod{m}.
$$
Since $$n+1$$ is even, write $$n+1 = 2k$$. Then:
$$
n^{2k} \equiv -1 \pmod{m},
$$
or equivalently:
$$
(n^k)^2 \equiv -1 \pmod{m}.
$$
So $$-1$$ must be a **quadratic residue modulo $$m$$**.

This requirement places restrictions on the structure of $$m$$.

---

#### Subcase 1: Prime divisors $$p \equiv 3 \pmod{4}$$

Let $$p$$ be an odd prime such that $$p \equiv 3 \pmod{4}$$. We claim that $$-1$$ is **not** a quadratic residue modulo such $$p$$.

To prove this, we use **Euler’s Criterion**:

> For any odd prime $$p$$ and any integer $$a \not\equiv 0 \pmod{p}$$:
> $$
> a^{\frac{p-1}{2}} \equiv 
> \begin{cases}
> 1 \pmod{p} & \text{if } a \text{ is a quadratic residue}, \\
> -1 \pmod{p} & \text{if } a \text{ is a non-residue}.
> \end{cases}
> $$

Apply Euler's Criterion with $$a = -1$$:
$$
(-1)^{\frac{p-1}{2}} \equiv 
\begin{cases}
1 \pmod{p} & \text{if } \frac{p-1}{2} \text{ is even}, \\
-1 \pmod{p} & \text{if } \frac{p-1}{2} \text{ is odd}.
\end{cases}
$$

Since $$\frac{p-1}{2}$$ is odd exactly when $$p \equiv 3 \pmod{4}$$, we find:
$$
(-1)^{\frac{p-1}{2}} \equiv -1 \pmod{p}.
$$

Thus, $$-1$$ is **not** a quadratic residue modulo any prime $$p \equiv 3 \pmod{4}$$.

Therefore, if any such prime divides $$m$$, then the congruence
$$
x^2 \equiv -1 \pmod{m}
$$
has no solution, and such $$m$$ must be excluded.

---

#### Subcase 2: $$m$$ divisible by 4

Suppose for contradiction that $$m$$ is divisible by 4 and

$$
x^2 \equiv -1 \pmod{m}
$$

has a solution. Then it must also be true that

$$
x^2 \equiv -1 \pmod{4}. \quad (1)
$$

Since $n$ is odd, we have $n^{\frac{n+1}{2}}$ also odd. Set $x = n^{\frac{n+1}{2}}=2k+1$

Therefore:

$$
x^2 \equiv n^{n+1} \equiv (2k+1)^2 \equiv 4k^2+4k+1 \equiv 1 \pmod{4}
$$

Which brings us to a contradiction with $(1)$, showing that $m$ cannot be divisible by $4$.

---

#### Pursuing completeness

Let $$m$$ be a positive integer such that
$$
x^2 \equiv -1 \pmod{m}
$$
has a solution. Then:

- $$m$$ must not be divisible by 4,
- All odd prime divisors of $$m$$ must satisfy $$p \equiv 1 \pmod{4}$$.

Conversely, if $$m$$ is a product of distinct odd primes, each congruent to $$1 \pmod{4}$$ , and $$m$$ is not divisible by 4, then such $$x$$ exists. This follows from the **Chinese Remainder Theorem**, which guarantees a solution to
$$
x^2 \equiv -1 \pmod{m}
$$

whenever solutions exist modulo each prime factor of $$m$$.

Since we have

$$
x^2 \equiv -1 \pmod{p_i}
$$

For each odd prime $p_i$ such that $$p_i \equiv 1 \pmod{4}$$.

($p=2$ also satisfies this!)

Thus, these conditions are **necessary and sufficient** for the congruence
$$
n^{n+1} \equiv -1 \pmod{m}
$$
to hold when $$n$$ is odd.



---

### Final Count

- From the even-$$n$$ case, **all odd $$m \leq 49$$** work: there are $$25$$ such values.
- From the odd-$$n$$ case, some **even** $$m \leq 49$$ work — specifically, those not divisible by $$4$$ and composed only of primes $$\equiv 1 \pmod{4}$$.

Let us list such even $$m$$ explicitly:

1. $$2 = 2$$ — valid (of course).
2. $$10 = 2 \cdot 5$$ — valid.
3. $$26 = 2 \cdot 13$$ — valid.
4. $$34 = 2 \cdot 17$$ — valid.


Hence, the total number of valid $$m$$ is:

$$
25 + 4  = \boxed{29}.
$$

---

#### Answer

$$
\boxed{29}
$$

## The field in math that combines everything - Number Theory!!!
I'll try to find problems with cooler constructions next time.
