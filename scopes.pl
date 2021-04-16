sub foo { 
    print "$x\n";
}
sub bar {
    local $x; 
    $x = 2; 
    foo();
}

$x = 1;
foo(); # prints '1'
bar(); # prints '2' because $x was localed in bar
foo(); # prints '1' again because local from foo is no longer in effect

sub car {
    my $x = 5;
    foo();
}
car(); # prints '1' because the x in car is only accessible within its lexical block
print "$x\n" #prints '1'
