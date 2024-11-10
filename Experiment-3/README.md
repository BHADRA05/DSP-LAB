Experiment - 3

# LINEAR CONVOLUTION

Linear convolution is a mathematical operation used to combine two signals to produce a third signal.

It's a fundamental operation in signal processing and systems theory.

Mathematical Definition:

Given two signals, x(t) and h(t), their linear convolution is defined as:

 y(t) = x(t) * h(t) = ∫𝐱(𝛕)𝐡(𝐭 − 𝛕) 𝐝𝛕

Applications:

• Filtering: Convolution is used to filter signals, removing unwanted frequencies or noise.

• System Analysis: The impulse response of a system completely characterizes its behaviour, and 

convolution can be used to determine the output of the system given a known input.

• Image Processing: Convolution is used for tasks like edge detection, blurring, and sharpening 

images

## OBSERVATIONS
**With built-in function:**
Enter input x(n):[1 2 1 1]
Enter index of x(n):0:3
Enter input h(n):[1 1 1 1]
Enter index of h(n):0:3
     1     3     4     5     4     2     1

![Exp_3a](https://github.com/user-attachments/assets/d71df3d8-9e84-4d18-b0ff-32cb7a84764e)

**Without built-in function:**
Enter index of x(n): 0:3
Enter input h(n):[3 2 1 2]
Enter index of h(n): 0:3
The convolution result is:
     3     8     8    12     9     4     4

![Exp_3b](https://github.com/user-attachments/assets/3e9150bc-18cc-4718-8fc5-195644813966)





