# $Revision: 0.04 $
# $Date: Sat Dec 27 10:05:00 2008 -0500 $
# $Source: lib/Convert/Color/IRC.pm $

package Convert::Color::IRC;

use 5.008;

use warnings;
use strict;
use utf8;

use Sub::Exporter -setup =>
    { exports => [qw(name_by_irc_color rgb_by_irc_color)] };

our $VERSION = '0.04';

my %mapping = (
	0 => ['white' => 'FFFFFF'],
	1 => ['black' => '000000'],
	2 => ['blue' => '0000FF'],
	3 => ['green' => '00FF00'],
	4 => ['red' => 'FF0000'],
	5 => ['brown' => 'A52A2A'],
	6 => ['purple' => '800080'],
	7 => ['orange' => 'FFA500'],
	8 => ['yellow' => 'FFFF00'],
	9 => ['light green' => '90EE90'],
	10 => ['cyan' => '00FFFF'],
	11 => ['light cyan' => 'E0FFFF'],
	12 => ['light blue' => 'ADD8E6'],
	13 => ['pink' => 'FFC0CB'],
	14 => ['gray' => '808080'],
	15 => ['light gray' => 'D3D3D3']
);

sub name_by_irc_color {
    if (defined $_) {
        return $mapping{$_}->[0];
    }
    else {
        return;
    }
}

sub rgb_by_irc_color {
    if (defined $_) {
        return $mapping{$_}->[1];
    }
    else {
        return;
    }
}

1;

__END__

=head1 DISCLAIMER

This software is currently under development.  It is not done.
While it will not be done quickly, contributions can help
make things go faster.  Please contribute if you can.

=head1 NAME

Convert::Color::IRC - Convert IRC colors to names or rgb hex codes.

=head1 VERSION

Version 0.04

=head1 SYNOPSIS

 use Convert::Color::IRC qw(name_by_irc_color rgb_by_irc_color);
 my $irc = 2; # blue
 my $word = name_by_irc_color($irc) # Returns 'blue';
 my $html = rgb_by_irc_color($irc) # Returns '0000FF';

=head1 DESCRIPTION

This module has been made for those that wish to interact between
IRC and other mediums, such as websites.  While not everyone
is a fan of using colors with IRC, they are not going away any time
soon.  It is with this rationale that this module was made, to at
least facilitate and easy conversion from IRC's codes to other
formats.

=head1 SUBROUTINES/METHODS

=head2 name_by_irc_color

This function returns the color name most associated with
the supplied IRC color.

The parameters are as follows:

=over 4

=item * $_[0]

The IRC color code.

Returns the color name on success, or nothing on failure.

=back

=head2 rgb_by_irc_color

This function returns the hex representation of the 
supplied IRC color.

The parameters are as follows:

=over 4

=item * $_[0]

The IRC color code.

Returns the color name on success, or nothing on failure.

=back

=head1 DIAGNOSTICS

No error messages are printed, and no exceptions are thrown.
If the parameter passed in is not a number between 0 and 15,
the functions just return;, which is equal to false.

=head1 CONFIGURATION AND ENVIRONMENT

There should be no issues with the environment this is placed in.

=head1 DEPENDENCIES

Perl 5.10 or higher is required due to the use of the given/when
syntax.  If heavily requested, I can work on a 5.8 compatible
method of these functions.

=head1 INCOMPATIBILITIES

There are no known incompatibilities in this module.

=head1 BUGS AND LIMITATIONS

Please report any bugs or feature requests to C<bug-games-rcp_framework at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Convert-Color-IRC>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 AUTHOR

Jason Felds, C<< <wolfman.ncsu2000 at gmail.com> >>

=head1 ACKKNOWLEDGMENTS

A big thank you must be given to the CPAN Testers for catching
._ files in my archive, and the Freenode #Perl room for
helping me handle this situation.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Convert::Color::IRC


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Convert-Color-IRC>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Convert-Color-IRC>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Convert-Color-IRC>

=item * Search CPAN

L<http://search.cpan.org/dist/Convert-Color-IRC/>

=back

=head1 LICENSE AND COPYRIGHT

Copyright 2008 Jason Felds, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.
