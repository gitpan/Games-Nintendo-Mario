#!/usr/bin/perl

use Games::Nintendo::Mario;
use Test::More 'no_plan';

my $plumber = Games::Nintendo::Mario->new;

isa_ok($plumber, 'Games::Nintendo::Mario');
