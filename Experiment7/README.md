Experiment - 7

# PROPERTIES OF DFT

1. Linearity Property:

The linearity property states that the DFT of a linear combination of two signals is the same linear

combination of their DFTs.

`DFT{a. x[n] + b. y[n]} = a.X[k] + b.Y[k]`

2. Multiplication Property:

The multiplication property states that the pointwise multiplication of two sequencesin the time domain

corresponds to circular convolution in the frequency domain.

`DFT{x[n]. y[n]} = 1/N [𝐷𝐹𝑇{𝑥[𝑛]} ⊛ 𝐷𝐹𝑇{𝑦[𝑛]}]`

3. Circular Convolution Property:

The convolution theorem states that the circular convolution of two sequences in the time domain is the

pointwise multiplication of their DFTs in the frequency domain.

`DFT{x[n]⊛y[n]} = X[k].Y[k]`

4. Parseval's Theorem:

The Parseval’s theorem states that the total energy of a signal in the time domain is equal to the total

energy in the frequency domain.

`X[k]:∑_(n=0)^(N-1)〖x[n]〗^2 =1/N ∑_(n=0)^(N-1)〖X[k]〗`

These properties make the DFT a powerful tool for analyzing discrete signals in the frequency domain.

## OBSERVATIONS

**1. Linearity Property:**
Enter the input x(n): [1 2 3 4]
Enter the input y(n): [1 2 1 2]
Enter the value of a: 2
Enter the value of b: 3
LHS
  38.0000 + 0.0000i  -4.0000 + 4.0000i -10.0000 + 0.0000i  -4.0000 - 4.0000i

RHS
  38.0000 + 0.0000i  -4.0000 + 4.0000i -10.0000 + 0.0000i  -4.0000 - 4.0000i

Linearity property holds

**2. Multiplication Property:**
Enter the input x(n): [1 2 3 4]
Enter the input y(n): [1 2 1]
LHS
   8.0000 + 0.0000i  -2.0000 - 4.0000i   0.0000 + 0.0000i  -2.0000 + 4.0000i

RHS
   8.0000 + 0.0000i  -2.0000 - 4.0000i   0.0000 + 0.0000i  -2.0000 + 4.0000i

Multiplication property holds

3. **Circular Convolution Property:**
Enter the input x(n): [1 1 1 1]
Enter the input y(n): [1 2 1]
LHS
    16     0     0     0

RHS
    16     0     0     0

Circular convolution property holds

4. **Parseval's Theorem:**
Enter the input x(n): [1 2 3 4]
Enter the input y(n): [1 2 1]
LHS
     8

RHS
     8

Parseval's theorem verified
