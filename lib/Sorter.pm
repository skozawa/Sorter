# implement this
package Sorter;

use base Class::Accessor;
__PACKAGE__->follow_best_practice;
__PACKAGE__->mk_accessors(qw/values/);

sub set_values {
    my $this = shift;
    $this->{values} = [@_];
}

sub get_values {
    my $this = shift;
    return @{$this->{values}};
}


<<<<<<< HEAD
sub sort {
    my $this = shift;
    
    my @sort_values = sort {$a <=> $b} @{$this->{values}};
    $this->{values} = [@sort_values];
}

=======

sub sort {
    my $this = shift;
    
    $this->quick_sort(0, $#{$this->{values}});
}

sub quick_sort {
    my $this = shift;
    my ($left, $right) = @_;
    
    #my $pivot = ${$this->{values}}[$left];
    my $pivot = ${$this->{values}}[int(($left+$right)/2)];
    
    my $i = $left;
    my $j = $right;
    
    while(1) {
	## check array_item
	while(${$this->{values}}[$i] < $pivot) {$i++;}
	while(${$this->{values}}[$j] > $pivot) {$j--;}
	last if($i >= $j);
	
	## exchange
	$this->swap($i, $j);
	
	$i++;
	$j--;
    }
    
    $this->quick_sort($left, $i-1) if($left < $i-1);
    $this->quick_sort($j+1, $right) if($j+1 < $right);
}


<<<<<<< HEAD
>>>>>>> mywork
=======
sub swap {
    my $this = shift;
    my ($i, $j) = @_;
    
    my $tmp = ${$this->{values}}[$i];
    ${$this->{values}}[$i] = ${$this->{values}}[$j];
    ${$this->{values}}[$j] = $tmp;
}

>>>>>>> subwork
1;
