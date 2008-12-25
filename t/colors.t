#!perl -T

use Test::More;
use Convert::Color::IRC qw(name_by_irc_color rgb_by_irc_color);

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

plan tests => ( scalar keys %mapping ) * 2 + 2;

foreach (keys %mapping) {
    is( name_by_irc_color( $_ ), $mapping{ $_ }->[0], "Ensure color $_ => $mapping{ $_ }->[0]" );
    is( rgb_by_irc_color( $_ ),  $mapping{ $_ }->[1],   "Ensure hex $_ => $mapping{ $_ }->[1]" );
}

is( name_by_irc_color(), undef, 'Invalid parameter: should return nothing.' );
is( rgb_by_irc_color(),  undef, 'Invalid parameter: should return nothing.' );