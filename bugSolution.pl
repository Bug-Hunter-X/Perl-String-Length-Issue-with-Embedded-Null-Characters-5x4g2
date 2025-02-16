#!/usr/bin/perl

use strict;
use warnings;
use Encode qw(encode decode); 

my $str = "This is a string with \0 embedded nul character";

# Encode the string to a binary representation.
my $encoded_str = encode('utf8',$str); 

# Print the length of the encoded binary string.
print length($encoded_str); 
print "\n";

# Print the whole string using binmode.
open my $fh, '>', 'output.txt' or die "Could not open file: $!";
binmode $fh;
print $fh $encoded_str; 
close $fh; 
print "The whole string was written into the output.txt file";