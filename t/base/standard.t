# $Id: standard.t,v 1.1 2000/09/11 22:14:18 cgilmore Exp $

print "1..4\n";

use String::ParseWords;

$string = 'Word1';
$result = String::ParseWords::parse($string);
print "not " if (scalar(@$result) != 1);
print "ok 1\n";

$string = 'Word1 Word2';
$result = String::ParseWords::parse($string);
print "not " if (scalar(@$result) != 2);
print "ok 2\n";

$string = 'Word1 "Word 2" Word3';
$result = String::ParseWords::parse($string);
print "not " if (scalar(@$result) != 3);
print "ok 3\n";

$string = 'Word1 "Word 2" Word3 Word 4 "Word 5 " Word6';
$result = String::ParseWords::parse($string);
print "not " if (scalar(@$result) != 7);
print "ok 4\n";
