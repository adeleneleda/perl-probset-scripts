#!/usr/bin/perl

# Prints directory structure recursively;
#	Option to print in STDOUT or in file (depending on user's input when prompted)

use Cwd; # allows us to query current working directory

sub surveyDirectory {
	my $workdir = shift(@_);
	my $level = shift(@_);

	my $startdir = cwd;

	chdir "$workdir" or die "Cannot enter directory $workdir ($!)";
	opendir $DIR, '.' or die "Cannot read directory $workdir";

	my @contents = readdir $DIR or die "Cannot read $workdir";

	closedir $DIR;

	foreach $content (@contents) {
		next if ($content eq '.');
		next if ($content eq '..');

		print $handle "|" if $level > 0;
		print $handle " " x ($level * 3) . "|-- " . $content, "\n"; 
		if(-d "$content") { 

			&surveyDirectory("$content", $level + 1);
			next;
		}
	}

	chdir $startdir or die "Cannot go back to starting directory"
}

sub main {
	$handle = STDOUT;

	$directory = shift(@_);
	$file = shift(@_);

	if (defined($file) && $file ne '') {
		open OUTPUT, "> $file" or die "Cannot write to $file";
		$handle = OUTPUT;
	}

	&surveyDirectory($directory, 0);
	close $handle if defined($file);
}

# Execution Starts Here
print "Enter target directory: ";
chomp($target = <STDIN>);
print "Enter output file (leave empty if you wish to display in the commandline): ";
chomp($file = <STDIN>);
main($target, $file);
