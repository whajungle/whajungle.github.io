#!/usr/bin/perl

use common::sense;

## hyphop ##

#https://photos.app.goo.gl/VWQ63ZYhNPAA6Maq8
our $mode;

sub WIKI(){ 1 }

our $img_num=0;
our $img_width='';
our $img_height='';

sub parse_{
    if ( /\[\"(.+?)\"\,\[\"(.+?)\",(\d+),(\d+)/ ) {
#	warn "[i] $2 - $3 x $4";

	if ( $mode == WIKI ) {
	    my $W='';
	    $W = "=w$img_width" if ($img_width);
	    print "![$img_num]($2$W)\n";
	    $img_num++;
	    return
	}
	print "$2\n";
    }
}

sub get_{
    warn "[i] download $_[0]";
    my $r = open F, "-|", qw/curl -L -s/, $_[0];
    return undef unless $r;
    while (<F>){
	#parse_($_);
	&{$_[2]}($_)
    }
#    while 

}

my @SRC;
my @FILES;
my @args;


for (@ARGV) {
    if (/^http/ ) {
	push @SRC => $_;
	next;
    }
    if ( -s $_ ) { 
	push @FILES, $_;
	next;
    }
    push @args, $_;
}



for (0..$#args-1) {
    if ( $args[$_] == '-w' ) {
	$mode = WIKI;
	if ( $args[$_+1] =~ /^\d+$/ ) {
	    $img_width=$args[$_+1];
	}
    }
}

warn "[i] args: @args // MODE: $mode\n";
warn "[i] src: @SRC + @FILES\n";

for (@SRC) {
    my $c;
    my $l = get_($_ => \$c => \&parse_);
    warn "[i] downloader $_ $l bytes";
}

#while (<>){
#    warn "[i] $_";
#}
__END__

["AF1QipPWDAw1cDOe963NMQ0pbY7fPH6-3Ke0mgjP5Y7Y",["https://lh3.googleusercontent.com/J71tB0HA8g2koR0OwJvazA5yOqz_iwtf1xFPyQ70gqH8qX_c-HFuSWcx_ftOpaFdSR3eMTqX-8ROs_UKUhVPASkaH4NI_CaZARUYzkLidC6CZCRqX3SpT9b2jgrjFMe7x3QNNswRIA",720,1280,null,null,null,null,null,null,[8092278]

