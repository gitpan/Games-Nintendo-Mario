#!/usr/bin/perl

use Games::Nintendo::Mario::SMB;
use Test::More 'no_plan';

is(
	Games::Nintendo::Mario::SMB->new->damage->state,
	'dead',
	'damage in normal is death'
);

is(
	Games::Nintendo::Mario::SMB->new->powerup('mushroom')->state,
	'super',
	'mushrom in normal is super'
);

is(
	Games::Nintendo::Mario::SMB->new->powerup('flower')->state,
	'super',
	'flower in normal is super'
);
