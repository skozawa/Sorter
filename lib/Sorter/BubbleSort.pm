## Bubble sort
package Sorter::BubbleSort;

use strict;
use warnings;

use base 'Sorter';


sub sort {
    my $this = shift;
    
    for my $i ( 0 .. $#{$this->{values}}-1 ) {
	for my $j ( 0 .. $#{$this->{values}}-$i-1 ) {
	    if(${$this->{values}}[$j] > ${$this->{values}}[$j+1]) {
		$this->swap($j, $j+1);
	    }
	}
    }
}

1;
