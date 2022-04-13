#question 2
print "Question 2\n";
chomp( $DNA =<>);
$reverse=reverse $DNA;
$reverse=~ tr/ATGCatgc/TACGtacg/;
print"\nReverse of $DNA is $reverse";
if ($DNA eq $reverse){
print"\n$DNA is a palindrome " ;}
else{
print "\n$DNA is not a palindrome\n\n";}

#question 5
print "Question 5\n";
chomp($DNA = <>);
@array=();
for( $i = 0; $i < length $DNA; $i = $i + 3 ) {
   $substring=substr($DNA,$i,3);
   if (length $substring eq 3){
   push(@array,$substring);
   }
   
}
print "@array\n";

#question 6
print "question 6";
chomp(my $DNA = <>);
@array = ();
$le=length $DNA;
for ($i=0;$i<($le-2);$i=$i+1)
{
    $subs=substr($DNA,$i,3);
    if ($subs eq "ATG")
    {
        for ($j=$i+3;$j<($le-2);$j=$j+1)
        {
            $subs1=substr($DNA,$j,3);
            $k=$j-$i+3;
            if ($subs1 eq "TAA")
            {
                $subs2=substr($DNA,$i,$k);
                $length = (length $subs2) % 3;
                if ($length eq 0)
                {
                    print "$subs2\n";    
                }
            
                
            }

        }
    
        for ($j=$i+3;$j<($le-2);$j=$j+1)
        {
            $subs1=substr($DNA,$j,3);
            $k=$j-$i+3;
            if ($subs1 eq "TGA")
            {
                $subs2=substr($DNA,$i,$k);
                $length = (length $subs2) % 3;
                if ($length eq 0)
                {
                    print "$subs2\n";
                    
                }
            }

        }
     
        for ($j=$i+3;$j<($le-2);$j=$j+1)
        {
            $subs1=substr($DNA,$j,3);
            $k=$j-$i+3;
            if ($subs1 eq "TAG")
            {
                $subs2=substr($DNA,$i,$k);
                $length = (length $subs2) % 3;
                if ($length eq 0)
                {
                    print "$subs2\n";
                }
            }

        }
    }
    $i=$k+1;
}
