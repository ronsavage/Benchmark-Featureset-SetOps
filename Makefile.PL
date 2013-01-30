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
	LICENSE   => 'artistic_2',
# Next line runs copy.config.pl when user runs 'make'.
# Warning: '...' => 0 is OK but => '' or undef are ignored.
	PL_FILES  => {'scripts/copy.config.pl' => 'Copying...'},
	PREREQ_PM =>
	{
	App::moduleswhere => 0.03,
	Config            => undef,
	Config::Tiny      => 2.13,
	Date::Simple      => 3.03,
	File::Copy        => 2.21,
	File::HomeDir     => 0.99,
	Hash::FieldHash   => 0.12,
	Module::Version   => 0.12,
	Path::Class       => 0.24,
	Perl6::Slurp      => 0.050000,
	strict            => 1.04,
	Test::Simple      => 0.94,
	Test::Pod         => 1.45,
	Text::Xslate      => 1.5010,
	warnings          => 1.12,
	},
	VERSION_FROM => 'lib/Benchmark/Featureset/SetOps.pm',
);
