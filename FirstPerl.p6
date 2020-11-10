#!/usr/bin/perl
# hello-world.p6 by Martin Reyes

use 5.28.1;
use warnings;

print "Hello World, this print function doesn't include a newline!";
say "Hello World, this say function DOES include a newline!";

# There are 3 different data tyes

# Scalar
my $scalar = 30;

# Array
my @array = (1, 2, 3);

# Hashes / Dictionaries
my %hash = ("Key" => "Value");

# These can be printed as such

# Scalar Print
say "$scalar";

# Array Print
say "@array";

# Hash Print
# Requires for keyword, open/close brackets required
for (keys %hash){
    print "$_ $hash{$_}";
}
print "\n";

my $literal = "literal";

# Single Quotes are literal
say '$literal';

# Double Quotes interpret
say "$literal";

# Backslash used to escape special characters while using double quotes
say "\$literal";

# Repetition operator
say "=" x 10;

# Declare array with range operator (x through y into array)
my @rangeArray = (10..20);
say "@rangeArray";

# Find array size in two ways
say scalar @rangeArray;
say $#rangeArray+1;

# Append to end of array
push(@rangeArray, 21);
say "@rangeArray";

# Append to start of array
unshift(@rangeArray, "0");
say "@rangeArray";

# Remove from end of array
my $popped = pop(@rangeArray);
say "Popped $popped from @rangeArray";

# Remove from start of array
$popped = shift(@rangeArray);
say "Popped $popped from @rangeArray";

# Slicing array : extracting elements with indices from an array
say "@rangeArray[0..4]";

# Splice array : replace / remove elements from list
# Replace elements 2 through 5 with (1, 2, 3)
splice(@rangeArray, 1, 4, 1..4);
say "@rangeArray";

# Remove elements 2 through 5
my @removedElements = splice(@rangeArray, 1, 4);
say "@rangeArray";

# Split arrays : converts string to an array depending on delimiter
my $string = "Hello=World";
my @string = split("=", $string);
say "@string";

# Join arrays
my @joinArray = (3, 2, 1);
my $joinArray = join (", ", @joinArray);
say "$joinArray";

# Sorting arrays
my @sortedArray = sort(@joinArray);
say "@sortedArray";

# DEPRECATED
# Changing the starting index from 0 to 1
# $[ = 1;
# say "$sortedArray[1]";

# Merging arrays
my @arr1 = (1, 2, 3);
my @arr2 = (4, 5, 6);

my @mergedArray = (@arr1, @arr2);
say "@mergedArray";

# Hashes : K, V pairs
my %firstHash = (Key1 => "Value1", Key2 => "Value2");

# Check for existence
# say exist $firstHash{Key1};

# Add pair to hash
$firstHash{Key3} = "Value3";

# Get keys and values from hash (no particular order)
my @hashKeys = keys %firstHash;
say "Keys: @hashKeys (Added Key3)";
my @hashValues = values %firstHash;
say "Values: @hashValues (Removed Value3)";

# If-statement
if (exists($firstHash{Key3})){
    say "Key3 exists";
} else {
    say "Key3 does not exist";
}

# Size of Hash
say "Hash size: ", scalar @hashKeys;

# Delete pair from hash
delete $firstHash{Key3};

# Get keys and valuesfrom hash (no particular order)
@hashKeys = keys %firstHash;
say "Keys: @hashKeys (Removed Key3)";
@hashValues = values %firstHash;
say "Values: @hashValues (Removed Value3)";

# Negated If-statement
if (!exists($firstHash{Key3})){
    say "Key3 does not exist";    
} else {
    say "Key3 exists";
}

# Size of Hash
say "Hash size: ", scalar @hashKeys;

# Chomp : removes newline at the end of each scalar [in an array] [and end of each value in a hash]
print "Enter a skill: ";
my $input = <STDIN>;
print "$input";
my $chomped = chomp($input);
print "$input";
say "Removed : $chomped newline";

# Chop : removes last character at the end of each scalar [in an array] [and end of each value in a hash]
my $chopInput = "Start";
say "$chopInput";
my $chopped = chop($chopInput);
say "$chopInput";
say "Removed : $chopped";