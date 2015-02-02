#!/usr/bin/perl -w

use strict;


my $file = shift;
my $size = shift;

$/ = "\n>";
open (IN, $file);
while (<IN>) {
  s/>//g;
  my ($header, $seq) = split/\n/,$_,2;
  $seq =~ s/\n//g;
#  print length($seq),"\n";
  next if length($seq)<$size;
  print ">$header\n";
  print $seq,"\n";
}
