my %hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

foreach my $key (keys %hash) {
    print "Key: $key, Value: $hash{$key}\n";
}

#This will print the following:
#Key: a, Value: 1
#Key: b, Value: 2
#Key: c, Value: 3

#However, if you modify the hash inside the loop, you might encounter unexpected behavior.
foreach my $key (keys %hash) {
    delete $hash{$key};
    print "Key: $key, Value: $hash{$key}\n";
}
#This will print:
#Key: a, Value:
#Key: c, Value: 3
#It skips 'b' because after deleting 'a', the keys are re-indexed and 'b' gets skipped