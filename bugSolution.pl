my %hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

# Correct approach: Iterate over a copy of the keys
foreach my $key (keys %hash) {
    delete $hash{$key};
    print "Key: $key, Value: $hash{$key}\n";
}
#Alternative solution using a while loop
my %hash2 = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);
while (my ($key, $value) = each %hash2) {
    delete $hash2{$key};
    print "Key: $key, Value: $hash2{$key}\n";
}
#This will print the correct output each time:
#Key: a, Value:
#Key: b, Value:
#Key: c, Value: