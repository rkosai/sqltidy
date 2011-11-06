#!/usr/bin/perl

use strict;
use warnings;

use FindBin qw/$Bin/;
use Test::More;

##################################################

# Check each file to make sure it hasn't changed from the canonical tidy

for my $file ( glob ("$Bin/data/*.sql") ) {

    chdir("$Bin/data");
    `$Bin/../sqltidy $file`;

    my $tidied    = read_file("$file.tdy");
    my $expected  = read_file("$file.tdy.canonical");

    is($tidied, $expected, "Tidier for |$file| matches.");

    unlink "$file.tdy" or warn "Couldn't unlink |$file.tdy|.\n";
}

done_testing();

##################################################

sub read_file {
    my ($filename) = @_;
    if ( open (my $file, $filename) ) {
        local $/ = undef;
        return <$file>;
    }
    else {
        warn "Couldn't open file |$filename| for reading.\n";
        return undef;
    }
}
