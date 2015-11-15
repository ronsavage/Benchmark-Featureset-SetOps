use ExtUtils::MakeMaker;

# ----------------

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

my(%params) =
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
		'App::moduleswhere' => 0.03,
		'Config' => 0,
		'Config::Tiny' => 2.23,
		'Date::Simple' => 3.03,
		'File::Copy' => 2.30,
		'File::HomeDir' => 1.00,
		'File::Slurper' => 0.008,
		'Module::Version' => 0.12,
		'Moo' => 2.000002,
		'Path::Class' => 0.35,
		'strict' => 0,
		'Test::More' => 1.001014,
		'Test::Pod' => 1.51,
		'Test::Stream' => 1.302026,
		'Types::Standard' => 1.000005,
		'Text::Xslate' => 3.3.7,
		'warnings' => 0,
	},
	VERSION_FROM => 'lib/Benchmark/Featureset/SetOps.pm',
);


if ( ($ExtUtils::MakeMaker::VERSION =~ /^\d\.\d\d$/) && ($ExtUtils::MakeMaker::VERSION > 6.30) )
{
	$params{LICENSE} = 'artistic_2';
}

if ($ExtUtils::MakeMaker::VERSION ge '6.46')
{
	$params{META_MERGE} =
	{
		'meta-spec' =>
		{
			'version' => 2,
		},
		resources   =>
		{
			'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html?Name=Benchmark-Featureset-SetOps',
			'license'    => 'http://opensource.org/licenses/Artistic-2.0',
			repository   =>
			{
				'type' => 'git',
				'url'  => 'https://github.com/ronsavage/Benchmark-Featureset-SetOps.git',
				'web'  => 'https://github.com/ronsavage/Benchmark-Featureset-SetOps',
			},
		},
	};
}

WriteMakefile(%params);
