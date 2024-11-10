Experiment - 8

# OVERLAP SAVE AND OVERLAP ADD METHOD

The Overlap-Save and Overlap-Add methods are efficient techniques in digital signal processing for performing convolution on long signals using the Fast Fourier Transform (FFT). These methods break the input signal into smaller segments and process them separately to handle large data more efficiently. These methods are widely used in practical DSP applications to reduce the computational complexity of filtering operations.

Overlap – Save Method:

The Overlap-Save method is used to handle long convolution operations by breaking the input signal into overlapping segments, applying FFT-based convolution to each segment, and discarding the overlapping parts to get the final result.

1.	Divide the input signal into overlapping segments of size N, where N=L+M−1 (L is the length of each segment of the input signal, and M is the length of the filter impulse response h(n)). The overlap size is M−1, meaning that each segment overlaps with the previous one by M−1 samples.

2.	Perform FFT on each segment and the filter impulse response (zero-padded).

3.	Multiply the FFTs and apply Inverse FFT to get the time-domain result.

4.	Discard the first M−1 samples (overlap) from each segment.

5.	Concatenate the valid portions of all segments to form the output.

Overlap – Add Method:

The Overlap-Add method is another technique to efficiently perform convolution by dividing the input signal into non-overlapping segments, applying FFT-based convolution, and overlapping and adding the results to produce the final output.

1.	Divide the input signal into non-overlapping segments of size L.

2.	Zero-pad each segment to size N=L+M−1.

3.	Perform FFT on each segment and the filter impulse response.

4.	Multiply the FFTs and apply Inverse FFT (IFFT) to get the time-domain result.

5.	The overlapping parts from consecutive segments are added together to form the complete filtered output.

## OBSERVATIONS
** Overlap – Save Method:**
Enter the input x(n): [3 -1 0 1 3 2 0 1 2 1]
Enter the input h(n): [1 1 1]
Fragmented block size: 3
Using Overlap and Save method
     3     2     2     0     4     6     5     3     3     4     3     1

Verification
    3.0000    2.0000    2.0000         0    4.0000    6.0000    5.0000    3.0000    3.0000    4.0000    3.0000    1.0000

** Overlap – Add Method:**
Enter the input x(n): [3 -1 0 1 3 2 0 1 2 1]
Enter the input h(n): [1 1 1]
Overlap-add convolution result:
     3     2     2     0     4     6     5     3     3     4     3     1

Built-in convolution result:
     3     2     2     0     4     6     5     3     3     4     3     1

![Exp_8](https://github.com/user-attachments/assets/4705b1a1-4138-47cc-949e-a3ce1bb7a32b)
