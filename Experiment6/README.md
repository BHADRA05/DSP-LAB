Experiment - 6

# DISCRETE FOURIER TRANSFORM AND INVERSE DISCRETE FOURIER TRANSFORM

1. Discrete Fourier Transform:
The Discrete Fourier Transform (DFT) is a mathematical technique used to transform a discrete signal
from time domain into the frequency domain.
The DFT of a sequence x(n) of length N is given by:

    `X[k]=∑(n=0 to N-1)x[n] ⋅e^(-j 2π/N nk),            k=0,1,2,...,N-1`

The DFT is extensively used in digital signal processing applications, such as filtering, spectral analysis,
and data compression.

2. Inverse Discrete Fourier Transform:
The Inverse Discrete Fourier Transform (IDFT) is the reverse process of the DFT, transforming the
frequency-domain representation of a signal back into the time-domain signal. The IDFT is used to
reconstruct the original signal from its frequency components.
The IDFT of a sequence X(k) of length N is given by:

       `x[n]=1/N ∑(k=0toN-1)X[k] ⋅e^(j 2π/N nk),          n=0,1,2,...,N-1`

The IDFT is extensively used in digital signal processing applications for reconstructing signals, 
synthesizing waveforms, and recovering time-domain data from frequency-domain representations.

## OBSERVATIONS

**DFT:**
Enter the input x(n): [1 2 3 4]
Enter the no. of points: 4
X
  10.0000 + 0.0000i
  -2.0000 + 2.0000i
  -2.0000 - 0.0000i
  -2.0000 - 2.0000i

Without using built-in function
  10.0000 + 0.0000i
  -2.0000 + 2.0000i
  -2.0000 + 0.0000i
  -2.0000 - 2.0000i

Using built-in function
  10.0000 + 0.0000i  -2.0000 + 2.0000i  -2.0000 + 0.0000i  -2.0000 - 2.0000i

Using twiddle factor
  10.0000 + 0.0000i  -2.0000 + 2.0000i  -2.0000 - 0.0000i  -2.0000 - 2.0000i

 
![DFT]("C:\Users\Bhadra\Desktop\Exp_6.jpg")


**IDFT:**
Enter the input x(n): [10 -2+2i -2 -2-2i]
Enter the no. of points: 4
x
   1.0000 + 0.0000i
   2.0000 + 0.0000i
   3.0000 - 0.0000i
   4.0000 - 0.0000i

Without using built-in function
     1
     2
     3
     4

Using built-in function
     1     2     3     4

Using twiddle factor
   1.0000 + 0.0000i   2.0000 + 0.0000i   3.0000 - 0.0000i   4.0000 - 0.0000i


