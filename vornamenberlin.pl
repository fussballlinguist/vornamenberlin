#! /usr/local/bin/perl -w

use strict;
use warnings;
use Data::Random qw(:all);
use Time::Piece;
use DateTime;
use DateTime::Format::Strptime;


my $begin = '28.01.2019\t13:30:00';
my $strp = DateTime::Format::Strptime->new(
    pattern => '%d.%m.%Y\t%T'
);
my $dt = $strp->parse_datetime($begin);

open IN, "< /path/to/file/complete.csv" or die $!;
my @names;
my @fields;
my $first;
my $second;
my $sexfirst;
my $sexsecond;
while (<IN>) {
	if ($_ =~ /^(\w+,\d+,\w,\d,\S+)$/) {
		push @names, $1;
	}
}
for (my $var = 0; $var < 1000; $var++) {
	printf "%s", $dt->add(hours => 3)->strftime("%d.%m.%Y\t%T\t");
	$first = $names[rand @names];
	if ($first =~ /,([mw]),/) {
		$sexfirst = $1;
	}
	do {
		$second = $names[rand @names];
		if ($second =~ /,([mw]),/) {
			$sexsecond = $1;
		}
	} while ($sexfirst ne $sexsecond);
	my @fieldsfirst = split(/,/,$first);
	my @fieldssecond = split(/,/,$second);
	print "$fieldsfirst[0] $fieldssecond[0]\\n";
	my $date = rand_date( min => '2019-01-01', max => '2019-12-31' );
	my $t = Time::Piece->strptime($date, "%Y-%m-%d");
	print "geboren am ";
	print $t->strftime("%d.%m.%Y");
	print " in $fieldsfirst[-1]\n";
}
