## Heap sort
package Sorter::HeapSort;

use base Sorter;


sub sort {
    my $this = shift;
    
    my $count = @{$this->{values}};
    for (my $i=int($count/2)-1; $i>=0; $i--) {
	$this->make_heap($i, $count-1);
    }
    for (my $i=$count-1; $i>0; $i--) {
	$this->swap(0, $i);
	$this->make_heap(0, $i-1);
    }
}


sub make_heap {
    my $this = shift;
    my ($parent, $count) = @_;
    
    while(1) {
	my $left = 2*$parent+1;
	last if($left > $count);
	## 左の子ノードと右の子ノードのどちらが大きいか
	if($left != $count && ${$this->{values}}[$left+1] > ${$this->{values}}[$left]) {
	    $left = $left+1;
	}
	## 子ノードが親ノードより大きいか
	last if(${$this->{values}}[$parent] >= ${$this->{values}}[$left]);
	## 親ノードと子ノードを交換
	$this->swap($parent, $left);
	$parent = $left;
    }
}

1;
