Experiment - 1

DISCRETE FOURIER TRANSFORM AND INVERSE DISCRETE
FOURIER TRANSFORM

1. Discrete Fourier Transform:
The Discrete Fourier Transform (DFT) is a mathematical technique used to transform a discrete signal
from time domain into the frequency domain.
The DFT of a sequence x(n) of length N is given by:
where:
𝑋 [𝑘] = ∑𝑁−1 𝑥[𝑛]. 𝑒
−𝑗
2𝜋
𝑘𝑛
𝑁 k = 0, 1, 2….., N-1
• X[k] is the DFT of the sequence x[n].
−𝑗
2𝜋
𝑘𝑛
• 𝑒 𝑁 represents the complex exponential basis function
The DFT is extensively used in digital signal processing applications, such as filtering, spectral analysis,
and data compression.
2. Inverse Discrete Fourier Transform:
The Inverse Discrete Fourier Transform (IDFT) is the reverse process of the DFT, transforming the
frequency-domain representation of a signal back into the time-domain signal. The IDFT is used to
reconstruct the original signal from its frequency components.
The IDFT of a sequence X(k) of length N is given by:
1 N−1 j
2πkn
where:
x[n] =
N
∑k=0 X[k]. e N n = 0, 1, 2………, N-1
• x[n] is the DFT of the sequence X[k].
j
2πkn
• e N is the inverse of the DFT’s complex exponential basis function

The IDFT is extensively used in digital signal processing applications for reconstructing signals, 
synthesizing waveforms, and recovering time-domain data from frequency-domain representations.
