#!/usr/bin/perl -w

#usage:  ./extract_genes_models_from_maker_gff.pl < input.gff > output.gff

use strict;

while (<>) {
  if (/^#/) {print $_;}
  else {
    my @line = split/\t/;
    if ($line[1] eq ".") {print $_;}
    elsif ($line[1] eq "maker") {print $_;}
  }
}
