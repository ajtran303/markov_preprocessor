# markov_preprocessor

This script will preprocess text files to be used as input data for Markov Chain generation.

## Usage

It runs in the command line with a text file argument:

```zsh
$ ruby preprocessor_sample.rb input_file.txt
```

and creates `input_file_clipped.txt` in the present working directory.

## What does it do?

It iterates over an array of each line in the file
It replaces all /n with a single space
It pads all punctuation marks with single spaces
It replaces all double spaces with a single space
It strips leading whitespace
It joins the array into one string
It writes the one string into a new file
