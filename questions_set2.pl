

#question 1
#use push , pop, shift and unshift commands in an array to return bases
print "Question1\n";
@array= ('A','C','G','T');
#original array
print "Original array: @array \n";
#using push
push(@array, 'A','G');
# Printing the array
print "\nUpdated array: @array";

# Prints the value returned by pop
print "\nValue returned by pop: ", pop(@array);
 
# Prints the array after pop operation
print "\nUpdated array: @array";

# Prints the value returned
# by shift function
print "\nValue returned by shift: ",
                        shift(@array);
 
# Array after shift operation
print "\nUpdated array: @array";

# returned by unshift
print "\nNo of elements returned by unshift: ",
                   unshift(@array, 'AAGGTTCC','TACCGA');
 
# Array after unshift operation
print "\nUpdated array: @array\n";


#question 2
#print if the given DNA sequence is palindrome or not
#it means both the sides as DNA is double strand helical structure so, its complement should also be palindrome
print "Question 2\n";
chomp( $DNA =<>);
$reverse=reverse $DNA;
$reverse=~ tr/ATGCatgc/TACGtacg/;
print"\nReverse of $DNA is $reverse";
if ($DNA eq $reverse){
print"\n$DNA is a palindrome " ;}
else{
print "\n$DNA is not a palindrome\n\n";}

#question 3
#count the no. of bases present in DNA also count percentage of each base 
print "Question 3\n";
chomp( $DNA =<>);
$length = length $DNA;
$count_A=0;
$count_T=0;
$count_C=0;
$count_G=0;
for($i=0;$i<$length;$i++)
{$substring=substr($DNA,$i,1);
if($substring eq"A")
{$count_A++;}
if($substring eq"T")
{$count_T++;}
if($substring eq"C")
{$count_C++;}
if($substring eq"G")
{$count_G++;}
}
$percentage_A=$count_A*100 / $length;
$percentage_C=$count_C*100 / $length;
$percentage_G=$count_G*100 / $length;
$percentage_T=$count_T*100 / $length;
print "percentage of A=$percentage_A\n";
print "percentage of C=$percentage_C\n";
print "percentage of G=$percentage_G\n";
print "percentage of T=$percentage_T\n";


#Question4 
#count motifs
#print "Question 4\n";
#open(Proteinfile, "Q 4.txt");


# Read the protein sequence data from the file, and store it into the array variable @protein
#@protein = <Proteinfile>;

#close Proteinfile;

#$protein = join( '', @protein);

# Remove whitespace
#$protein =~ s/\s//g;

#now let's searching for motifs in the loop;
#do {
#    print "Enter a motif you wanna search: ";

#    $motif = <STDIN>;
#    chomp $motif; #to remove new line
#    if ( $protein =~ /$motif/ ) {
#        print "Motif found\n\n";
 #   } else {
 #       print "Motif not found.\n\n";
 #   }

#} until ( $motif =~ /^\s*$/ );#until there is space in the file 

#question 5
#print the codons from the given bases
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

#Question 6
#print the protein if it starts with ATG and ends with TAA or TGA or TAG
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



