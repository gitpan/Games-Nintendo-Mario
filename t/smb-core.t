#!/usr/bin/perl

use Games::Nintendo::Mario::SMB;
use Test::More 'no_plan';

my $plumber = Games::Nintendo::Mario::SMB->new;

isa_ok($plumber, 'Games::Nintendo::Mario::SMB');

is($plumber->name, 'Mario', "It's-a him, Mario!");

is($plumber->state,'normal',"Mario starts life normal");

is($plumber->powerup('mushroom')->state,'super',"after a mushroom, he's super");

