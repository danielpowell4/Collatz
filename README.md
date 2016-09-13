#Collatz Sequence
It has been said that math isn't ready for the [Collatz Sequence](https://en.wikipedia.org/wiki/Collatz_conjecture).
Computers nowadays, however, have little problem running simple tasks millions of times a minute.

The journey to 1 takes disparate paths based upon subtle difference in starting point.

The goal of this exercise was to find the longest path between 1 and 1,000,000.
The answer, as it turns out, is 837799 with a sequence length of 525.

##How the Sequence Works
1. - Start from any integer
2. - If the number is even divide by two
3. - If the number is odd, multiply it by 3 and add one
4. - Continue until you have reached "1"

### To see in action
1. Ensure you have a current version of ruby (2.2.0 or higher)
2. Clone the repo to your machine and `cd` on in
3. From the command-line run `ruby lib/collatz.rb`

##Sample
n	sequence	                                                                     length
1	1	                                                                             1
2	2 → 1	                                                                         2
3	3 → 10 → 5 → 16 → 8 → 4 → 2 → 1	                                               8
4	4 → 2 → 1	                                                                     3
5	5 → 16 → 8 → 4 → 2 → 1	                                                       6
6	6 → 3 → 10 → 5 → 16 → 8 → 4 → 2 → 1	                                           9
7	7 → 22 → 11 → 34 → 17 → 52 → 26 → 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1	 17


### Files worth inspection
The real "gold" is over in [Collatz/lib/collatz.rb](https://github.com/danielpowell4/Collatz/blob/master/lib/collatz.rb)
