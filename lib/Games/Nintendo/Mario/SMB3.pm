#!/usr/bin/perl

package Games::Nintendo::Mario::SMB3;

our $VERSION = '0.09_01';

use base qw(Games::Nintendo::Mario);

use strict;
use warnings;

sub _names  { qw[Mario Luigi] }
sub _states { qw[normal super fire raccoon tanooki frog hammer pwing] }
sub _items  { qw[mushroom flower leaf tanookisuit frogsuit hammersuit pwing] }

sub _goto_hash { 
	{
		damage		=> {
			normal	=> 'dead',
			super	=> 'normal',
			_else	=> 'super'
		},
		mushroom 	=> {
			normal	=> 'super'
		},
		flower		=> 'fire',
		leaf		=> 'raccoon',
		tanookisuit	=> 'tanooki',
		hammersuit	=> 'hammer',
		frogsuit	=> 'frog',
		pwing		=> 'pwing'
	}
}

sub games {
	return ('Super Mario Bros. 3');
}

"It's-a me!  Mario!";

__END__

=head1 NAME

Games::Nintendo::Mario::SMB3 -- a class for fuzzy-tailed Italian plumbers

=head1 SYNOPSIS

  use Games::Nintendo::Mario::SMB3;

  my $hero = new Games::Nintendo::Mario::SMB
                   name  => 'Mario',
                   state => 'hammer';
  
  $hero->powerup('mushroom'); # Nothing happens.
  $hero->damage;              # back to super

  print "It's-a me!  ", $hero->name, "!\n"; # 'Super Mario'

  $hero->powerup('frogsuit'); # Nothing happens.

  $hero->damage for (1 .. 2); # cue the Mario Death Music

=head1 DESCRIPTION

This class subclasses Games::Nintendo::Mario, providing a model of the behavior
of the Mario Brothers in Super Mario Brothers 3.  All of the methods described
in the Mario interface exist as documented.

=head2 NAMES

The plumber may be named Mario or Luigi.

=head2 STATES

The plumber's state may be any of: C<normal>, C<super>, C<fire>, C<raccoon>,
C<tanooki>, C<hammer>, C<frog>, or C<pwing>

=head2 POWERUPS

Valid powerups are: C<mushroom>, C<flower>, C<leaf>, C<tanookisuit>,
C<hammersuit>, C<frogsuit>, or C<pwing>

=head1 AUTHORS

Ricardo SIGNES E<lt>rjbs@cpan.orgE<gt>

=head1 COPYRIGHT

Copyright 2003 by Ricardo Signes E<lt>rjbs@cpan.orgE<gt>

This program is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.

See http://www.perl.com/perl/misc/Artistic.html

=cut

