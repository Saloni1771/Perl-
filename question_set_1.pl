#!/usrbin/perl

#ques1
#Concatenation is attaching something to the end of something else. A biologist is well aware that joining DNA sequences is a common task in the biology lab, for instance when a clone is inserted into a cell vector or when splicing exons together during the expression of a gene. Write a program to store two DNA fragments into two variables called $DNA1 and $DNA2. Print the DNA onto the screen and concatenate the DNA fragments into a third variable $DNA3 and print them.
$DNA1 ='ACGGGTGAAAAGCCGCGCTGAA';
$DNA2 ='TAAATTGCCCGAGCTGAC';
$DNA3="$DNA1$DNA2";
print "here is the concatenation of first two fragments:";
print "  $DNA3\n";

#ques2
#Genetic information normally flows from DNA to RNA. There are certain instances where the flow is in opposite direction. For example, certain viruses such as HIV can allow RNA to serve as a template in assembling and making DNA strands for its replication. Write a program that reverse transcribe a given RNA sequence into DNA.
$RNA='ACUUUGGGUGAUAAGUCCGCGCUGAAUUUU';
$DNA =$RNA;
$RNA=~s/U/T/g;
print"  here is the result for transcribing RNA to DNA:$RNA\n";

#ques3
#The close relationship between the two strands of DNA in a double helix is such that, given the sequence of one strand, you can easily predict the other. Such a calculation is an important part of many bioinformatics applications. For instance, when searching a database with some query DNA, it is common to automatically search for the reverse complement of the query as well, since you may have in hand the opposite strand of some known gene. Write a program to calculate thereverse complement of a strand of DNA
#$DNA ='ACGGGTGAAAGCCGCGCTGAA';
$rev_DNA=reverse$DNA;
$rev_DNA= ~tr/ACGTacgt/TGCAtgca/;
print "Here is the reverse complement of the DNA : $rev_DNA\n";

#ques4
#Programs interact with files on a computer disk. Develop a program that reads the protein sequence data from the file and stores it into a variable. First, create a file on your computer (use your text editor) and add the below protein sequence into it. You will be using the following data (part of the human zinc finger protein NM_021964):
#MNIDDKLEGLFLKCGGIDEMQSSRTMVVMGGVSGQSTVSGELQDSVLQDRSMPHQEILAADEVLQESEMRQQDMISHDELMVHEETVKNDEEQMETHERLPQGLQYALNVPISVKQEITFTDVSEQLMRDKKQIR
open(ZINC_data,"protein_sequence.txt");
$my_file=<ZINC_data>;
print"$my_file\n";

#ques5
#Since DNA sequence data can use both upper- and lowercase letters, write a program that prints DNA sequences (containing both upper- and lowercase letters) in lowercase (acgt); write another that prints the DNA in uppercase (ACGT). Use the tr operator.
#lets take the dna sequencse from DNA2 
#so upper and lower of DNA2='TAAATTGCCCGAGCTGAC' is

$DNA2=~tr/ACGT/acgt/;
print "lower of DNA2 is $DNA2\n";
$DNA2=~tr/acgt/ACGT/;
print"upper of DNA2 is $DNA2\n ";

#ques6
#Perl has several convenient ways to get information into a program. One of such ways is to ask the user for specific input. Write a program that prompts the user to enter a DNA sequence. Print the given sequence to the screen and calculate the length of the input sequence.
$DNA=<STDIN>;
chomp $DNA;
print"$DNA\n";
$length=length($DNA);
print"$length";







