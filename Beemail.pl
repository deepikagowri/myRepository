use DBI;
$dbh=DBI->connect("dbi:ODBC:test") || die "cannot connect:	$dBI::errstr";
print "Enter your mail id ";
$from_id=<>;
chomp($from_id);
# print "Enter TO mail id ";
# $to_id=<>;
# chomp($to_id);
my $sth = $dbh->prepare("SELECT body from mails where from_id=?;");
$sth->execute($from_id) or die $DBI::errstr;
while (my @row=$sth->fetchrow_array())
{
	my ($body)=@row;
	print " $body\n";
	if ($row=~m/^hi|^hello|^dear/)
	{
        print "$row\n";
    }
} 








