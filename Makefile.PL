# $Id: Makefile.PL,v 1.1 2000/09/11 22:14:00 cgilmore Exp $

use strict;
use Config qw(%Config);
use ExtUtils::MakeMaker;

WriteMakefile 
  (
   'NAME'         => 'String::ParseWords',
   'VERSION_FROM' => 'ParseWords.pm',
   'dist'         => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
  );

package MY;

sub test {
  q(
TEST_VERBOSE=0

test: all
	$(FULLPERL) t/TEST $(TEST_VERBOSE)

);
}
