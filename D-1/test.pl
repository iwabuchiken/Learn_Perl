#!C:\WORKS\Programs\Perl64\bin\perl.exe -w
#REF http://stackoverflow.com/questions/1530812/how-can-i-run-an-external-program-in-perl answered Oct 7 '09 at 10:41

#REF http://www.perlmonks.org/?node_id=117721 Oct 09, 2001 at 17:14 UTC
use Data::Dumper;

sub test_SpecialVars {
	
#	printf("[%d] \$% => %d\n", __LINE__, $%);
	
	print "\$% => ", $%;		#=> 0
	print "\n\n";
	
	print "\$, => ", $,;		#=> ""
	print "\n\n";
	
	print "\$@ => ", $@;		#=> ""
	print "\n\n";
	
	
}

sub test_Sub {
	
	my ($param, $tmp) = @_;
#	my $param = @_;
	
	print Dumper($param);	#=> "ab"
	print Dumper($tmp);

#	print Dumper($_);	#=> "undef"
	
#	print $param[0];	#=> no

	
	
}

sub test_D_4_V_1_0_Split {
	
	#REF http://stackoverflow.com/questions/19234209/perl-subroutine-arguments answered Oct 7 '13 at 21:05
	my ($p1, $p2) = @_;
	
	#REF defined http://www.unix.com/shell-programming-and-scripting/9856-perl-how-tell-if-variable-null.html "Oh that's pretty cool - I don't really like $str eq"
	#REF if http://www.tizag.com/perlT/perlif.php
	if(defined($p1)) {
		
	} else {
		
		$p1 = "not defined";
		
	}
	
	printf("[%d] p1 => %s\n", __LINE__, $p1);
	
}

sub test_D_4_V_1_0 {
	

	print "hi\n";
	
	#my $str = "wisptis.exe                   1588 Console                    1        656 Kwisptis.exe                   2028 Console                    1        868 KWLIDSVC.EXE                   2232 Services                   0      1,964 KWLIDSVCM.EXE                  2292 Services                   0         44 K";
	
	my $str = "abc";
	
	print $str;
	
	#REF split http://perldoc.perl.org/functions/split.html
	print split('b', $str);
	print "\n";
	
	
	
	###################################
	#	split: put into a var
	###################################
	my $words = split('b', $str);
	
	#REF printf http://www.perlmonks.org/?node_id=20519
	printf("[%d] words => %s\n", __LINE__, $words);
	
	
	
	#printf("words[0] => %s\n", $words[0]);	#=> Use of uninitialized value in printf at C:\WORKS\WS\Eclipse_Luna\Learn_Perl\D-1\
	#											#test.pl line 20.
	
#	print Dumper($tokens);
	
	###################################
	#	split: other way
	###################################
	#REF http://stackoverflow.com/questions/16872340/split-a-string-into-array-in-perl answered Jun 1 '13 at 11:50
	#print $_, "\n" for split ' ', 'file1.gz file1.gz file3.gz';
	#print __LINE__, "\n";
	
	printf("[%d] print \$_ \n", __LINE__);
	
	print $_, "\n" for split 'b', $str;
	
	
	print "\n";
	
	printf("[%d] splitting...\n", __LINE__);
	
	###################################
	#	printf the result of split
	###################################
	printf("[%d] printf the result of split\n", __LINE__);
	
	printf("%s\n", split('b', $str));
	
	print Dumper(split('b', $str));
							#$VAR1 = 'a';
							#$VAR2 = 'c';
							
	###################################
	#	array
	###################################
	#my $ary = (1,2,3);	#=> "$VAR1 = 3;"
	my $ary = [1,2,3];	#=> $VAR1 = [
						#          1,
						#          2,
						#          3
						#        ];
	printf("[%d] \$ary => %s\n", __LINE__, $ary);
	
	#print $ary;		#=> ARRAY(0x7cd278)
	
	print "\n";
	
	print Dumper($ary);		#=> w
	#print Dumper(\$ary);	#=> w
	
	#print split('K', $str);
	#print split('K', $str)[0];
	
	#print `dir`;
	
	#my $out = `tasklist|sort`;
	#
	#print $out;
	
	#my $output = `dir`;
	
	#print $output;

}

#test_SpecialVars();

#REF http://affy.blogspot.jp/p5be/ch05.htm
test_Sub("ab", "bc", "de");
#test_Sub("A".."Z");	#=> "26"
#test_Sub(1..3);	#=> w

test_D_4_V_1_0_Split(10);	#=> w
#test_D_4_V_1_0_Split;	#=> w
#test_D_4_V_1_0;