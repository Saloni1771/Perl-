#ques3
$DNA ='ACGGGTGAAAGCCGCGCTGAA';
$rev_DNA=reverse$DNA;
$rev_DNA=~tr/ACGTacgt/TGCAtgca/;
print "Here is the reverse complement of the DNA :$rev_DNA\n";
