Experiment - 1
PROPERTIES OF DFT

1. Linearity Property:

The linearity property states that the DFT of a linear combination of two signals is the same linear

combination of their DFTs.

DFT{a. x[n] + b. y[n]} = a.X[k] + b.Y[k]

2. Multiplication Property:

The multiplication property states that the pointwise multiplication of two sequencesin the time domain

corresponds to circular convolution in the frequency domain.

DFT{x[n]. y[n]} = 1 𝐷𝐹𝑇{𝑥[𝑛]} ⊛ 𝐷𝐹𝑇{𝑦[𝑛]}

𝑁

3. Circular Convolution Property:

The convolution theorem states that the circular convolution of two sequences in the time domain is the

pointwise multiplication of their DFTs in the frequency domain.

DFT{x[n]⊛y[n]} = X[k].Y[k]

4. Parseval's Theorem:

The Parseval’s theorem states that the total energy of a signal in the time domain is equal to the total

energy in the frequency domain.

𝑁−1

∑ 𝑥[𝑛]. 𝑦 ∗ [𝑛] =

𝑛=0

𝑁−1

1

∑ 𝑋(𝑘).𝑌 ∗ (𝑘)

𝑁

𝑘=0
These properties make the DFT a powerful tool for analyzing discrete signals in the frequency domain.
