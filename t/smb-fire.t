#!/usr/bin/perl

use Games::Nintendo::Mario::SMB;
use Test::More 'no_plan';

is(
	Games::Nintendo::Mario::SMB->new(state => 'fire')->damage->state,
	'normal',
	'damage in fire is normal'
);

is(
	Games::Nintendo::Mario::SMB->new(state => 'fire')->powerup('mushroom')->state,
	'super',
	'mushrom in fire is still fire'
);

is(
	Games::Nintendo::Mario::SMB->new(state => 'fire')->powerup('flower')->state,
	'fire',
	'flower in fire mode changes nothing'
);
