# markov_preprocessor

This script will preprocess text files to be used as input data for Markov Chain generation.

The sample text provided is from *New Rose Hotel*, by William Gibson.

## Usage

It runs in the command line with a text file argument:

```zsh
$ ruby preprocessor_sample.rb rose_sample.txt
$ => rose_sample_clipped.txt
```

## Input: rose_sample.txt

```txt
New Rose hotel

   Seven  rented  nights  in this coffin, Sandii. New Rose Hotel. How I
want you now. Sometimes I hit you. Replay it so slow and sweet and  mean,  I
can  almost  feel  it. Sometimes I take your little automatic out of my bag,
run my thumb down smooth, cheap chrome. Chinese .22, its bore no wider  than
the dilated pupils of your vanished eyes. Fox is dead now, Sandii.
  Fox told me to forget you.
I  remember Fox leaning against the padded bar in the dark lounge of
some Singapore hotel,  Bencoolen  Street,  his  hands  describing  different
spheres  of influence, internal rivalries, the arc of a particular career, a
point of weakness he had discovered in the armor of some think tank.
```

## Output: rose_sample_clipped.txt
```txt
New Rose hotel Seven rented nights in this coffin , Sandii . New Rose Hotel . How I want you now . Sometimes I hit you . Replay it so slow and sweet and mean , I can almost feel it . Sometimes I take your little automatic out of my bag , run my thumb down smooth , cheap chrome . Chinese . 22 , its bore no wider than the dilated pupils of your vanished eyes . Fox is dead now , Sandii . Fox told me to forget you . I remember Fox leaning against the padded bar in the dark lounge of some Singapore hotel , Bencoolen Street , his hands describing different spheres of influence , internal rivalries , the arc of a particular career , a point of weakness he had discovered in the armor of some think tank .
```
