## Bubble sort
package Sorter::BubbleSort;

use base Sorter;


sub sort {
    my $this = shift;
    
    for my $i ( 0 .. $#{$this->{values}}-1 ) {
	for my $j ( 0 .. $#{$this->{values}}-$i-1 ) {
	    if(${$this->{values}}[$j] > ${$this->{values}}[$j+1]) {
		$this->swap($i, $j);
	    }
	}
    }
}

1;
