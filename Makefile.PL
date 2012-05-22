use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
(
	($] ge '5.005') ?
	(
	AUTHOR   => 'Ron Savage (ron@savage.net.au)',
	ABSTRACT => 'Compare various array/set handling modules',
	) : (),
	clean =>
	{
	FILES => 'blib/* Makefile MANIFEST Benchmark-Featureset-SetOps-*'
	},
	dist =>
	{
	COMPRESS => 'gzip',
	SUFFIX   => 'gz'
	},
	DISTNAME  => 'Benchmark-Featureset-SetOps',
	NAME      => 'Benchmark::Featureset::SetOps',
# Next line runs copy.config.pl when user runs 'make'.
# Warning: '...' => 0 is OK but => '' or undef are ignored.
	PL_FILES  => {'scripts/copy.config.pl' => 'Copying...'},
	PREREQ_PM =>
	{
	App::moduleswhere => 0.03,
	Config::Tiny      => 2.13,
	Module::Version   => 0.12,
	},
	VERSION_FROM => 'lib/Benchmark/Featureset/SetOps.pm',
);
