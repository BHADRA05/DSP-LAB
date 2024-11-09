Experiment - 5

# LINEAR CONVOLUTION USING CIRCULAR CONVOLUTION AND VICE VERSA

Performing Linear Convolution Using Circular Convolution.
1. Zero-Padding:
Pad both sequences x[n] and h[n] with zeros to a length of at least 2N-1, where N is the 
maximum length of the two sequences. This ensures that the circular convolution will not wrap 
around and introduce artificial periodicity.
2. Circular Convolution:
Perform circular convolution on the zero-padded sequences.
3. Truncation:
Truncate the result of the circular convolution to the length N1 + N2 - 1, where N1 and N2 are 
the lengths of the original sequences x[n] and h[n], respectively.

Performing Circular Convolution Using Linear Convolution.
1. Zero-Padding:
Pad both sequences x[n] and h[n] to a length of at least 2N-1, where N is the maximum length 
of the two sequences.
2. Linear Convolution:
Perform linear convolution on the zero-padded sequences.
3. Modulus Operation:
Apply the modulus operation to the indices of the linear convolution result, using the period N. 
This effectively wraps around the ends of the sequence, making it circular

## OBSERVATIONS
**Linear Convolution Using Circular Convolution:**
Enter input x(n): [1 2 3 4]
Enter input h(n): [1 1 1 1]
Linear convolution using Circular convolution: 
     1     3     6    10     9     7     4

**Circular Convolution Using Linear Convolution:**
Enter input x(n): [1 2 3 4]
Enter input h(n): [1 1 1]
Circular convolution using Linear convolution: 
     8     7     6     9
