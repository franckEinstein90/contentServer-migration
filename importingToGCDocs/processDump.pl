use strict;
use warnings;
my $totalItems = 0;
my $filename = "dump.txt";
open(my $fh, '<:encoding(UTF-8)', $filename)
	or die "Couldn't open input file";
while(my $row = <$fh>) {
	chomp $row;
	if($row =~ m/(\d+).+Comments\s*?(\d+) Item/){
		my $primaryNumber = $1;
		my $numItems = $2;
		$totalItems += $numItems;
		print "$primaryNumber\t$numItems\n";
	}

}
print "$totalItems\n";

