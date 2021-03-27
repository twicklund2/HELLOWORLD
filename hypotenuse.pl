#!/usr/bin/perl
# hypotenuse give 2 sides of a rt. triangle

use strict;
use CGI;

sub LOGIT {
my $msg = shift;
open (LOG,">>/var/log/httpd/error_log");
print LOG "$msg\n";
close LOG;
return;
}

my $x = 3;
my $y = 4;
my $hypotenuse=0;
LOGIT("in hypotenuse.pl(1): ".$x.",".$y);

if (CGI::param('x')) {$x = CGI::param('x')}
else {$x=1}
if (CGI::param('y')) {$y = CGI::param('y')}
else {$y=1}

LOGIT("in hypotenuse.pl(2): ".$x.",".$y);

my $hypotenuse = sqrt(($x*$x) + ($y*$y));
 
print "Content-type: text/html\n\n";
print $hypotenuse."\n";
1;



