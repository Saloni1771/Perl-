# question to find motif
#Motif is basically  is a nucleotide or amino-acid sequence pattern that is widespread and has been proven or assumed to have a biological significance.
# Ask the user for the filename of the file containing the protein sequence data, and collect it from the keyboard
print "Please type the filename of the protein sequence data: ";

$proteinfilename = <STDIN>;

# Remove the newline from the protein filename
chomp $proteinfilename;

# open the file;
open(PROTEINFILE, $proteinfilename);


# Read the protein sequence data from the file, and store it into the array variable @protein
@protein = <PROTEINFILE>;

# Close the file - we've read all the data into @protein now.
close PROTEINFILE;

# Put the protein sequence data into a single string, as it's easier to search for a motif in a string than in an array of lines (what if the motif occurs over a line break?)
$protein = join( '', @protein);

# Remove whitespace
$protein =~ s/\s//g;

#searching for motifs in the loop;
do {
    print "Enter a motif to search for: ";

    $motif = <STDIN>;

    # Remove the newline at the end of $motif

    chomp $motif;

    # Look for the motif

    if ( $protein =~ /$motif/ ) {

        print "Motif found\n\n";

    } else {

        print "Motif not found.\n\n";
    }

} until ( $motif =~ /^\s*$/ );
