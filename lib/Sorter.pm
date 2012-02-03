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


sub sort {
    my $this = shift;
    
    my @sort_values = sort {$a <=> $b} @{$this->{values}};
    $this->{values} = [@sort_values];
}

1;
