#!/usr/bin/perl

use Games::Nintendo::Mario::SMB;
use Test::More 'no_plan';

is(
	Games::Nintendo::Mario::SMB->new(state => 'super')->damage->state,
	'normal',
	'damage in super is normal'
);

is(
	Games::Nintendo::Mario::SMB->new(state => 'super')->powerup('mushroom')->state,
	'super',
	'mushrom in super is still super'
);

is(
	Games::Nintendo::Mario::SMB->new(state => 'super')->powerup('flower')->state,
	'fire',
	'flower in super is firey'
);
