#!/usr/bin/perl
#question 1
#A loop allows you to repeatedly execute a block of statements enclosed within matching curly braces. Construct a while loop code to read a multiline protein sequence file while printing each line as it is read. Additionally, add a condition to
print an error message and exit the program, if the program fails to open the file.print"Question-1\n";
$Name="file not found";
#open the file we want to read
open("Myfile",'<',"sample_dna.fasta") or die $Name;
my $line=<Myfile>;
#using while loop as mentioned in the question
while(<Myfile>){
   print $_;
}

close(Myfile);


#question3
#Subroutines are an important way to organize a program and are used in all major programming languages. A subroutine wraps up a bit of code, gives thecode a name, and provides a way to pass in some values for its calculations andthen report back the results. Construct a subroutine that can calculate the totallength of a polypeptide encoded by a given sequence. Integrate the subroutine toyour program which will print the length of the polypeptide when prompted with a DNA sequence.
print"\nQuestion-3";
#taking and printing a dna sequence as input
print "Enter a DNA sequence: \n";
$DNA = <STDIN>;
chomp $DNA;
print "The original dna sequence is: $DNA\n";

#define the subroutine
sub len_polypeptide {
	$len= int(length($DNA)/3);
	print "The length of the polypeptide chain is $len amino acids.\n";
}

#calling the subroutine
len_polypeptide();

#question4
#Translation is a process by which the genetic code contained within a messenger RNA (mRNA) molecule is decoded to produce a specific sequence of amino acids in a polypeptide chain. Write a Perl program to simulate how the genetic code flows from DNA into protein. Print out the mRNA sequence and the amino acids peptides that would be formed by the DNA sequence “ATGGTTGCACCACAACCGGTTGTGCTCTGCAGTTGA&quot;
print"\nquestion-4";
$DNA="ATGGTTGCACCACAACCGGTTGTGCTCTGCAGTTGA";
$RNA=$DNA;
$RNA=~s/T/U/g;#convert DNA into RNA
print"\n$RNA";#print  RNA
chomp($RNA);
my(%genetic_code) = (
  'UCA' => 'S', # Serine
  'UCC' => 'S', # Serine
  'UCG' => 'S', # Serine
  'UCU' => 'S', # Serine
  'UUC' => 'F', # Phenylalanine
  'UUU' => 'F', # Phenylalanine
  'UUA' => 'L', # Leucine
  'UUG' => 'L', # Leucine
  'UAC' => 'Y', # Tyrosine
  'UAU' => 'Y', # Tyrosine
  'UAA' => '_', # Stop
  'UAG' => '_', # Stop
  'UGC' => 'C', # Cysteine
  'UGU' => 'C', # Cysteine
  'UGA' => '_', # Stop
  'UGG' => 'W', # Tryptophan
  'CUA' => 'L', # Leucine
  'CUC' => 'L', # Leucine
  'CUG' => 'L', # Leucine
  'CUU' => 'L', # Leucine
  'CCA' => 'P', # Proline
  'CAU' => 'H', # Histidine
  'CAA' => 'Q', # Glutamine
  'CAG' => 'Q', # Glutamine
  'CGA' => 'R', # Arginine
  'CGC' => 'R', # Arginine
  'CGG' => 'R', # Arginine
  'CGU' => 'R', # Arginine
  'AUA' => 'I', # Isoleucine
  'AUC' => 'I', # Isoleucine
  'AUU' => 'I', # Isoleucine
  'AUG' => 'M', # Methionine
  'ACA' => 'T', # Threonine
  'ACC' => 'T', # Threonine
  'ACG' => 'T', # Threonine
  'ACU' => 'T', # Threonine
  'AAC' => 'N', # Asparagine
  'AAU' => 'N', # Asparagine
  'AAA' => 'K', # Lysine
  'AAG' => 'K', # Lysine
  'AGC' => 'S', # Serine
  'AGU' => 'S', # Serine
  'AGA' => 'R', # Arginine
  'AGG' => 'R', # Arginine
  'CCC' => 'P', # Proline
  'CCG' => 'P', # Proline
  'CCU' => 'P', # Proline
  'CAC' => 'H', # Histidine
  'GUA' => 'V', # Valine
  'GUC' => 'V', # Valine
  'GUG' => 'V', # Valine
  'GUU' => 'V', # Valine
  'GCA' => 'A', # Alanine
  'GCC' => 'A', # Alanine
  'GCG' => 'A', # Alanine
  'GCU' => 'A', # Alanine
  'GAC' => 'D', # Aspartic Acid
  'GAU' => 'D', # Aspartic Acid
  'GAA' => 'E', # Glutamic Acid
  'GAG' => 'E', # Glutamic Acid
  'GGA' => 'G', # Glycine
  'GGC' => 'G', # Glycine
  'GGG' => 'G', # Glycine
  'GGU' => 'G'  # Glycine
);
my ($protein) = "";
for( $i = 0; $i < length $RNA; $i = $i + 3 ) {
    $substring=substr($RNA,$i,3);
    $codon = substr($RNA,$i,3);
    $protein .= $genetic_code{$codon};
    print"\n$substring";
    print "\nTranslated protein sequence is $protein";
}
print"\nfinal protein equence translated is $protein";

#question5
#Over the fairly short history of bioinformatics, several different biologists and programmers invented several ways to format sequence data in computer files.There are many such formats, perhaps as many as 20 in regular use for DNA alone. Because of its simplicity, the FASTA format is perhaps the most widely used of all formats. Write a subroutine that can handle FASTA-style data. Follow the given pseudocode for your reference (Use the given file sample_dna.fasta for this exercise)
print"\nQuestion-5\n";
sub get_file_data {
    # Initialize variables
    my @filedata = (  );

    unless( open(GET_FILE_DATA, "sample_dna.fasta") ) {
        print STDERR "Cannot open file \"sample_dna.fasta\"\n\n";
        exit;
    }

    @filedata = <GET_FILE_DATA>;

    close GET_FILE_DATA;

    return @filedata;
}
sub extract_sequence_from_fasta_data {

    my(@fasta_file_data) = @_;
    # Declare and initialize variables
    my $sequence = '';

    foreach my $line (@fasta_file_data) {

        # discard blank line
        if ($line =~ /^\s*$/) {
            next;

        # discard comment line
        } elsif($line =~ /^\s*#/) {
            next;

        # discard fasta header line
        } elsif($line =~ /^>/) {
            next;

        # keep line, add to sequence string
        } else {
            $sequence .= $line;
        }
    }

    # remove non-sequence data (in this case, whitespace) from $sequence string
    $sequence =~ s/\s//g;

    return $sequence;
}

my @file_data = (  );
my $dna = '';
my $protein = '';

# Read in the contents of the file "sample_dna"
@file_data = get_file_data("sample_dna.fasta");

# Extract the sequence data from the contents of the file "sample.dna"
$dna = extract_sequence_from_fasta_data(@file_data);
print"$dna\n";

#question2
#Regular expressions are ways of matching one or more strings using special
#wildcard-like operators. Write a program that can read a protein file and check for
#a specific motif that begins with an Asparagine residue and ends with two
#Threonine residues (Use the given file ZNF148.fasta for this exercise).
print"\nQuestion-2\n";
$Name="file not found";
#open the file we want to read
open("Myfile",'<',"ZN148.fasta") or die $Name;
my $DNA=<Myfile>;
chomp($DNA);
@array = ();
$le=length $DNA;
for ($i=0;$i<($le-2);$i=$i+1)
{
    $subs=substr($DNA,$i,1);
    if ($subs eq "N")
    {
        for ($j=$i+1;$j<$le;$j=$j+1)
        {
            $subs1=substr($DNA,$j,2);
            $k=$j-$i+1;
            if ($subs1 eq "TT")
            {
                $subs2=substr($DNA,$i,$k);
                print "$subs2\n";
            }
        }
    }
}
