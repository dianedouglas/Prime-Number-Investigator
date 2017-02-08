# _PRIME NUMBER INVESTIGATOR_

#### _Print the first X primes, or all prime numbers up to X_

#### By Diane Douglas and Christian Danielsen

## 7/23/2014 (Updated 2/1/2017)

## Description:

This is a small Ruby command line program to investigate prime numbers. It was written while we were in school at Epicodus. It was an exercise in practicing Test Driven Development by writing tests to lead us through the problem using RSpec. 

Later, for practice I converted it to a gem and published it to rubygems.org.

There are two functions we were challenged to write: one will find all the prime numbers up to a given number, and the other will find a quantity of prime numbers (for example, the first 5 primes are 2, 3, 5, 7, 11.)

## Setup This Repository:

1. You need Ruby for this. Here are [the installation instructions](http://railsinstaller.org/en), and [an easy installer for Windows](http://rubyinstaller.org/)
2. You also need rspec to run the included Behavior Driven Development tests. Run this from the command line: `gem install rspec`. If you get permissions errors on a Mac you can run `sudo gem install rspec`. 
3. Clone or download this project and in your command line, change directory into the top level of the project folder. 
4. Run the tests with the command `rspec`.

## The Prime Number Investigator Gem

1. Install the gem: `gem install prime_number_investigator` (again, use `sudo gem install prime_number_investigator` if you have permissions errors)
2. To try it out, let's use the ruby shell. From the command line type: `irb`
3. Then, we require the gem and make a new instance of the PrimeNumberInvestigator class.

```
require 'prime_number_investigator'
@prime_playground = PrimeNumberInvestigator.new
```

4. To print out all the prime numbers up to 10, run the following method:

```
@prime_playground.prime_sifting(10)
=> [2, 3, 5, 7]
```

5. To print out the first 10 prime numbers (instead of primes less than a value of 10), run this method:

```
@prime_playground.nth_prime(10)
=> [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
```

## Technologies Used

* Ruby
* RSpec
* Command line

Copyright © 2017
