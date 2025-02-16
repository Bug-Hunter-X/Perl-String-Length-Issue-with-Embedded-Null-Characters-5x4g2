#!/usr/bin/perl

use strict;
use warnings;

my $str = "This is a string with \0 embedded nul character";

print length($str); #Prints the length of the string before the nul character
print "\n";
print "The length of the string is:" , length($str) , " characters.";

#Trying to print the whole string
print "\nThe whole string is: $str";