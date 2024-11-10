Experiment - 9

# FILTERS

Design of FIR Filters Using Window Methods:
In FIR (Finite Impulse Response) filter design, the goal is to create a filter with specific frequency response characteristics, such as low-pass, high-pass, band-pass, or band-stop. Using window methods, we can shape the filter response by applying a window function to an ideal filter impulse response.
Steps for FIR Filter Design Using Windows
1.	Define the Ideal Impulse Response
First, compute the ideal impulse response, hideal(n), of the desired filter in the time domain. For example, for a low-pass filter with a cutoff frequency f_c, the ideal impulse response is:

`h_ideal(n) = sin(2 * pi * f_c * (n - (N - 1) / 2)) / (pi * (n - (N - 1) / 2))`

where:

o	f_c is the cutoff frequency in normalized units,
o	N is the filter length,
o	n is the sample index.
This ideal response is typically non-causal, so it is shifted to make it causal by adding (N - 1) / 2 to the sample index.

3.	Select an Appropriate Window Function
To achieve a practical FIR filter, select a window function, w(n), that will shape the frequency response. The choice of window affects the trade-off between the main lobe width (frequency resolution) and the sidelobe levels (leakage). Common windows include the Hamming, Hann, Blackman, Kaiser, and rectangular windows, each defined by specific equations:

o	`Rectangular Window: w(n) = 1`

o	`Triangular (Bartlett) Window: w(n) = 1 –2*abs(n) / (N - 1)`

o	`Hamming Window: w(n) = 0.54 - 0.46 * cos(2 * pi * n / (N - 1))`

o	`Hanning Window: w(n) = 0.5 * (1 - cos(2 * pi * n / (N - 1)))`

o	`Blackman Window: w(n) = 0.42 - 0.5 * cos(2 * pi * n / (N - 1)) + 0.08 * cos(4 * pi * n / (N - 1))`

5.	Apply the Window to the Ideal Impulse Response
Multiply each point in the ideal impulse response h_ideal(n) by the corresponding point in the window function w(n) to get the windowed impulse response
                      `h(n) = h_ideal(n) * w(n)`.
The result is a practical, finite impulse response that approximates the ideal response with controlled sidelobes.

7.	Construct the FIR Filter
The final impulse response h(n) defines the coefficients of the FIR filter. These coefficients can now be used in a filtering algorithm (e.g., convolution with input data) to perform the desired filtering operation.


`Advantages and Disadvantages of Window-Based FIR Design`

Advantages:
•	Simplicity: Windowing is straightforward and does not require iterative optimization.
•	Control over Leakage: Different windows provide different control over sidelobes and main lobe width, allowing design flexibility.
Disadvantages:
•	Fixed Frequency Response: Once the window is chosen, the frequency response characteristics are determined, limiting customization.
•	Trade-Off Limitations: Some applications require specific frequency responses that cannot be perfectly achieved using standard windows.

## OBSERVATIONS
**Low Pass filter:**

![LPF](https://github.com/user-attachments/assets/2887c3ee-84b5-4481-9c7f-14b3c8e4ee4d)

**High Pass filter:**

![HPF](https://github.com/user-attachments/assets/9ff15366-6483-45f3-a6f9-cd3e286e5bec)

**Band Pass filter:**

![BPF](https://github.com/user-attachments/assets/24a48940-e31a-4cd4-9bbf-0c9f2b8ae0e6)

**Band Stop filter:**

![BSF](https://github.com/user-attachments/assets/0ad27635-2908-4382-85c2-3f4d855c7a68)

