Experiment - 4

# CIRCULAR CONVOLUTION

Circular convolution is a mathematical operation that is like linear convolution but is performed in a 
periodic or circular manner. This is particularly useful in discrete-time signal processing where signals 
are often represented as periodic sequences.

Mathematical Definition:

Given two periodic sequences x[n] and h[n], their circular convolution is defined as:
 
 y[n] = (x[n] ⊛ h[n]) = ∑_{k=0} ^{N-1} x[k]h[(n-k) mod N] 

Applications:

• Discrete-Time Filtering: Circular convolution is used for filtering discrete-time signals.

• Digital Signal Processing: It's a fundamental operation in many digital signal processing 
algorithms.

Cyclic Convolution: In certain applications, such as cyclic prefix OFDM, circular convolution is used 
to simplify the implementation of linear convolution.

## OBSERVATIONS

**Using FFT and IFFT:**
Enter input x(n): [1 2 3 4]
Enter index of x(n): 0:3
Enter input h(n):[1 2 1 0]
Enter index of h(n): 0:3
Using FFT and IFFT:
    12     8     8    12

**Using concentric circle method:**
Enter input x(n): [1 2 3 4]
Enter input h(n): [1 2 1 0]
Using Concentric Circle method: 
    12     8     8    12

**Using matrix method:**
Enter input x(n): [1 2 3 4]
Enter input h(n): [1 2 1 0]
Using Matrix method:
    12
     8
     8
    12

