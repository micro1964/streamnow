####################################################################
#
#    This file was generated using Parse::Yapp version 1.05.
#
#        Don't edit this file, use source file instead.
#
#             ANY CHANGE MADE HERE WILL BE LOST !
#
####################################################################
package TM::AsTMa::Fact;
use vars qw ( @ISA );
use strict;

@ISA= qw ( Parse::Yapp::Driver );
use Parse::Yapp::Driver;

#line 1 "yapp/astma-fact.yp"

use Data::Dumper;
use TM;
use TM::Literal;

use constant LEFT  => 'http://psi.tm.bond.edu.au/astma/1.0/#psi-left';
use constant RIGHT => 'http://psi.tm.bond.edu.au/astma/1.0/#psi-right';

my $tracing = 0;



sub new {
    my $class   = shift;
    my %options = @_;
    my $store   = delete $options{store} || new TM;       # the Yapp parser is picky and interprets this :-/

    ref($class) and $class=ref($class);

    my $self = $class->SUPER::new( 
##				   yydebug   => 0x01,
				   yyversion => '1.05',
				   yystates  =>
[
	{#State 0
		DEFAULT => -1,
		GOTOS => {
			'maplet_definitions' => 1
		}
	},
	{#State 1
		ACTIONS => {
			'TRACE' => 15,
			'CANCEL' => 16,
			'ENCODING' => 11,
			'INCLUDE' => 12,
			'' => 9,
			'EOL' => 10,
			'COMMENT' => 3,
			'LOG' => 2,
			'ID' => 6,
			'LPAREN' => 5,
			'LBRACKET' => 8
		},
		GOTOS => {
			'association_definition' => 4,
			'topic_definition' => 14,
			'template_definition' => 7,
			'maplet_definition' => 13
		}
	},
	{#State 2
		ACTIONS => {
			'EOL' => 17
		}
	},
	{#State 3
		ACTIONS => {
			'EOL' => 18
		}
	},
	{#State 4
		DEFAULT => -11
	},
	{#State 5
		ACTIONS => {
			'ID' => 19
		}
	},
	{#State 6
		DEFAULT => -19,
		GOTOS => {
			'types' => 20
		}
	},
	{#State 7
		ACTIONS => {
			'EOL' => 21
		}
	},
	{#State 8
		DEFAULT => -42,
		GOTOS => {
			'@4-1' => 22
		}
	},
	{#State 9
		DEFAULT => 0
	},
	{#State 10
		DEFAULT => -12
	},
	{#State 11
		ACTIONS => {
			'EOL' => 23
		}
	},
	{#State 12
		ACTIONS => {
			'EOL' => 24
		}
	},
	{#State 13
		DEFAULT => -2
	},
	{#State 14
		DEFAULT => -10
	},
	{#State 15
		ACTIONS => {
			'EOL' => 25
		}
	},
	{#State 16
		ACTIONS => {
			'EOL' => 26
		}
	},
	{#State 17
		DEFAULT => -5
	},
	{#State 18
		DEFAULT => -4
	},
	{#State 19
		ACTIONS => {
			'RPAREN' => 27
		}
	},
	{#State 20
		ACTIONS => {
			'ISREIFIED' => 29,
			'ISA' => 28,
			'LPAREN' => 32,
			'ISINDICATEDBY' => 31,
			'REIFIES' => 30
		},
		DEFAULT => -15,
		GOTOS => {
			'type' => 33,
			'reification_indication' => 34
		}
	},
	{#State 21
		DEFAULT => -3
	},
	{#State 22
		ACTIONS => {
			'LPAREN' => 5
		},
		GOTOS => {
			'association_definition' => 35
		}
	},
	{#State 23
		DEFAULT => -9
	},
	{#State 24
		DEFAULT => -7
	},
	{#State 25
		DEFAULT => -8
	},
	{#State 26
		DEFAULT => -6
	},
	{#State 27
		ACTIONS => {
			'AT' => 37
		},
		DEFAULT => -37,
		GOTOS => {
			'scope' => 36
		}
	},
	{#State 28
		ACTIONS => {
			'ID' => 38
		}
	},
	{#State 29
		ACTIONS => {
			'ID' => 39
		}
	},
	{#State 30
		ACTIONS => {
			'ID' => 40
		}
	},
	{#State 31
		ACTIONS => {
			'ID' => 41
		}
	},
	{#State 32
		DEFAULT => -51,
		GOTOS => {
			'ids' => 42
		}
	},
	{#State 33
		DEFAULT => -20
	},
	{#State 34
		DEFAULT => -39,
		GOTOS => {
			'inline_assocs' => 43
		}
	},
	{#State 35
		DEFAULT => -43
	},
	{#State 36
		ACTIONS => {
			'ISREIFIED' => 29,
			'ISINDICATEDBY' => 31,
			'REIFIES' => 30
		},
		DEFAULT => -15,
		GOTOS => {
			'reification_indication' => 44
		}
	},
	{#State 37
		ACTIONS => {
			'ID' => 45
		}
	},
	{#State 38
		DEFAULT => -21
	},
	{#State 39
		DEFAULT => -17
	},
	{#State 40
		DEFAULT => -16
	},
	{#State 41
		DEFAULT => -18
	},
	{#State 42
		ACTIONS => {
			'RPAREN' => 47,
			'ID' => 46
		}
	},
	{#State 43
		ACTIONS => {
			'EOL' => 49,
			'ID' => 48
		},
		GOTOS => {
			'inline_assoc' => 50
		}
	},
	{#State 44
		ACTIONS => {
			'EOL' => 51
		}
	},
	{#State 45
		DEFAULT => -38
	},
	{#State 46
		DEFAULT => -52
	},
	{#State 47
		DEFAULT => -22
	},
	{#State 48
		ACTIONS => {
			'ID' => 52
		}
	},
	{#State 49
		DEFAULT => -13,
		GOTOS => {
			'@1-5' => 53
		}
	},
	{#State 50
		DEFAULT => -40
	},
	{#State 51
		ACTIONS => {
			'ID' => 55
		},
		GOTOS => {
			'member' => 56,
			'association_members' => 54
		}
	},
	{#State 52
		DEFAULT => -41
	},
	{#State 53
		DEFAULT => -23,
		GOTOS => {
			'characteristics_indication' => 57
		}
	},
	{#State 54
		ACTIONS => {
			'ID' => 55
		},
		DEFAULT => -44,
		GOTOS => {
			'member' => 58
		}
	},
	{#State 55
		ACTIONS => {
			'COLON' => 59
		}
	},
	{#State 56
		DEFAULT => -45
	},
	{#State 57
		ACTIONS => {
			'SIN' => 63,
			'BN' => 61,
			'OC' => 67,
			'IN' => 66
		},
		DEFAULT => -14,
		GOTOS => {
			'class' => 65,
			'characteristic_indication' => 64,
			'characteristic' => 60,
			'indication' => 62
		}
	},
	{#State 58
		DEFAULT => -46
	},
	{#State 59
		DEFAULT => -51,
		GOTOS => {
			'ids1' => 69,
			'ids' => 68
		}
	},
	{#State 60
		DEFAULT => -25
	},
	{#State 61
		DEFAULT => -31
	},
	{#State 62
		DEFAULT => -26
	},
	{#State 63
		DEFAULT => -27,
		GOTOS => {
			'@2-1' => 70
		}
	},
	{#State 64
		DEFAULT => -24
	},
	{#State 65
		DEFAULT => -29,
		GOTOS => {
			'@3-1' => 71
		}
	},
	{#State 66
		DEFAULT => -33
	},
	{#State 67
		DEFAULT => -32
	},
	{#State 68
		ACTIONS => {
			'ID' => 72
		}
	},
	{#State 69
		ACTIONS => {
			'RBRACKET' => 74,
			'EOL' => 73
		},
		GOTOS => {
			'eom' => 75
		}
	},
	{#State 70
		ACTIONS => {
			'STRING' => 77
		},
		GOTOS => {
			'string' => 76
		}
	},
	{#State 71
		ACTIONS => {
			'AT' => 37
		},
		DEFAULT => -37,
		GOTOS => {
			'scope' => 78
		}
	},
	{#State 72
		ACTIONS => {
			'ID' => -52
		},
		DEFAULT => -50
	},
	{#State 73
		DEFAULT => -48
	},
	{#State 74
		ACTIONS => {
			'EOL' => 79
		}
	},
	{#State 75
		DEFAULT => -47
	},
	{#State 76
		DEFAULT => -28
	},
	{#State 77
		ACTIONS => {
			'EOL' => 80
		}
	},
	{#State 78
		ACTIONS => {
			'LPAREN' => 81
		},
		DEFAULT => -34,
		GOTOS => {
			'assoc_type' => 82,
			'char_type' => 83
		}
	},
	{#State 79
		DEFAULT => -49
	},
	{#State 80
		DEFAULT => -53
	},
	{#State 81
		ACTIONS => {
			'ID' => 84
		}
	},
	{#State 82
		DEFAULT => -35
	},
	{#State 83
		ACTIONS => {
			'STRING' => 77
		},
		GOTOS => {
			'string' => 85
		}
	},
	{#State 84
		ACTIONS => {
			'RPAREN' => 86
		}
	},
	{#State 85
		DEFAULT => -30
	},
	{#State 86
		DEFAULT => -36
	}
],
				   yyrules   =>
[
	[#Rule 0
		 '$start', 2, undef
	],
	[#Rule 1
		 'maplet_definitions', 0, undef
	],
	[#Rule 2
		 'maplet_definitions', 2, undef
	],
	[#Rule 3
		 'maplet_definitions', 3, undef
	],
	[#Rule 4
		 'maplet_definitions', 3, undef
	],
	[#Rule 5
		 'maplet_definitions', 3,
sub
#line 43 "yapp/astma-fact.yp"
{ warn "Logging $_[2]\n"; }
	],
	[#Rule 6
		 'maplet_definitions', 3,
sub
#line 44 "yapp/astma-fact.yp"
{ die  "Parsing cancelled\n"; }
	],
	[#Rule 7
		 'maplet_definitions', 3,
sub
#line 45 "yapp/astma-fact.yp"
{
		    my $content;

		    if ($_[2] =~ /\|\s*$/)
		    { # a pipe | at the end, this is a UNIX pipe
			use IO::File;
			my $fh = IO::File->new ($_[2])
			    || die "unable to open pipe '$_[2]'\n";
			local $/ = undef;
			$content = <$fh>;
			$fh->close;
		    }
		    else
		    {
			use LWP::Simple;
			$content = get($_[2])
			    || die "unable to load '$_[2]' with LWP\n";
		    }
		    $_[0]->YYData->{INPUT} =
			$content . $_[0]->YYData->{INPUT}; # prepend it
		}
	],
	[#Rule 8
		 'maplet_definitions', 3,
sub
#line 67 "yapp/astma-fact.yp"
{ $tracing = $_[2]; warn "start tracing: level $tracing\n"; }
	],
	[#Rule 9
		 'maplet_definitions', 3,
sub
#line 68 "yapp/astma-fact.yp"
{
		                                              use Encode;
							      Encode::from_to ($_[0]->YYData->{INPUT}, "iso-8859-1", $_[2]);
							     }
	],
	[#Rule 10
		 'maplet_definition', 1, undef
	],
	[#Rule 11
		 'maplet_definition', 1, undef
	],
	[#Rule 12
		 'maplet_definition', 1, undef
	],
	[#Rule 13
		 '@1-5', 0,
sub
#line 80 "yapp/astma-fact.yp"
{
			my $tn=$_[1];
			$_[1] = $_[0]->{USER}->{store}->internalize ($_[1]);

			if (ref $_[3]) {                                                   # we have reification info
			    if (     $_[3]->[0] == 1) {                                    # 1 = REIFIES, means current ID is a shorthand for the other
				my $target=$_[3]->[1];
				# the other is a local id? then lookup/insert such a topic
				$target=$_[0]->{USER}->{store}->internalize($_[0]->{USER}->{store}->baseuri.$target)
				    if ($target=~/^[a-z_:][a-z0-9_:.-]*$/i);
				$_[0]->{USER}->{store}->internalize ($_[1] => $target);
			    } elsif ($_[3]->[0] == 0) {                                    # 0 = IS-REIFIED, this must be the other way round
				$_[0]->{USER}->{store}->internalize ($_[3]->[1] => $_[1]);
			    } elsif ($_[3]->[0] == 2) {                                    # 2 = ISINDICATEDBY, add the subject indicators
				$_[0]->{USER}->{store}->internalize ($_[1] => \ $_[3]->[1]);
			    } else {
				die "internal fu**up\n";
			    }
			}
			# assert instance/class
                        if (@{$_[2]}) {
			    $_[0]->{USER}->{store}->assert ( map { bless
								       [ undef,
									 undef,
									 'isa',
									 undef,
									 [ 'class', 'instance' ],
									 [ $_, $_[1] ],
									 ], 'Assertion' }
							     @{$_[2]} );
			}
			{                                                                     # memorize the types should be a 'topic'
                                                                                              # at the end (see end of parse)
			    my $implicits = $_[0]->{USER}->{implicits};
			    map { $implicits->{'isa-thing'}->{$_}++ }
			             (@{$_[2]}, $_[1]);                                       # the types and the ID are declared implicitely
			}
			
			if (ref $_[4]) {                                                      # there are inline assocs
			    foreach (@{$_[4]}) {
				my $type      = $_->[0];
				my $player    = $_->[1];
				my $store     = $_[0]->{USER}->{store};
				my $templates = $_[0]->{USER}->{templates};
				if ($type eq 'is-subclass-of' || $type eq 'subclasses') {
				    $store->assert (bless [ undef,                            # LID
							    undef,                            # SCOPE
							    'is-subclass-of',                 # TYPE
							    TM->ASSOC,                        # KIND
							    [ 'subclass',  'superclass' ],    # ROLES
							    [ $_[1],       $player ],         # PLAYERS
							    undef ], 'Assertion' );
				} elsif ($type eq 'is-a') {
				    $store->assert (bless [ undef,                   	      # LID
							    undef,                   	      # SCOPE
							    'isa',                  	      # TYPE
							    TM->ASSOC,        	              # KIND
							    [ 'instance', 'class' ], 	      # ROLES
							    [ $_[1],       $player ],	      # PLAYERS
							    undef ], 'Assertion' );
				} elsif ($type eq 'has-a') {                                  # same, but other way round
				    $store->assert (bless [ undef,                   	      # LID
							    undef,                   	      # SCOPE
							    'isa',               	      # TYPE
							    TM->ASSOC,        	              # KIND
							    [ 'instance', 'class' ], 	      # ROLES
							    [ $player,     $_[1] ],	      # PLAYERS
							    undef ], 'Assertion' );
				} elsif ($templates->tids ( $type ) &&
					 (my @ts    = $templates->match (TM->FORALL, type => $templates->tids ( $type )  ))) {
				    warn "duplicate template for '$type' found (maybe typo?), taking one\n" if @ts > 1;
				    my $t = $ts[0];                                           # I choose one
				    $store->assert (bless [ undef,                   	      # LID
							    undef,                   	      # SCOPE
							    $type,               	      # TYPE
							    TM->ASSOC,              	      # KIND
							    [  	                              # ROLES
							      map {
								  my $l = $templates->toplet ($_)->[TM->ADDRESS];
								  ($l && $l eq LEFT ?
							                 $_[1]
								   :
							           ($l && $l eq RIGHT ?
                                                                         $player
                                                                   :
								         $_)
							          )
							          } @{$t->[TM->ROLES]}
						            ],
						            [                       	      # PLAYERS
							      map {
							         my $l = $templates->toplet ($_)->[TM->ADDRESS];
							         ($l && $l eq LEFT ?
							                $_[1]
							          :
							          ($l && $l eq RIGHT ?
                                                                        $player
                                                                  :
								        $_)
							          )
							          } @{$t->[TM->PLAYERS]}
						           ],
							    undef ], 'Assertion' );
				} else {
				    die "unknown association type '$type' in inlined association\n";
				}
			    }
			}
			warn "added toplet $tn\n" if $tracing;
		     }
	],
	[#Rule 14
		 'topic_definition', 7,
sub
#line 191 "yapp/astma-fact.yp"
{
#warn "char/ind in topic: ".Dumper $_[7];
                        my $id = $_[1];
                        # add assertions for every characteristic
                        $_[0]->{USER}->{store}->assert ( map {bless [ undef,                                          # LID
								       $_->[1],                                       # SCOPE
								       $_->[2] ||                                     # TYPE
								       ($_->[0] == TM->NAME ? 'name' : 'occurrence'),
								       $_->[0],                                       # KIND
								       [ 'thing', 'value' ],                          # ROLES
								       [ $id,             $_->[3] ],                  # PLAYERS
								       undef ], 'Assertion' }
							  @{$_[7]->[0]} );

                        map { $store->internalize ($id => \ $_ ) } @{$_[7]->[1]};       # add the subject indicators

			{                                                               # memorize basename types and scopes as implicitely defined
			    my $implicits = $_[0]->{USER}->{implicits};
			    map { $implicits->{'isa-scope'}->{$_}++ }
                            map { $_->[1] }
                            grep ($_->[1], @{$_[7]->[0]});                              # get the bloody scopes and tuck them away

			    map { $implicits->{'subclasses'}->{ $_->[0] == TM->NAME ? 'name' : 'occurrence' }->{$_->[2]}++ }
                            grep ($_->[2], @{$_[7]->[0]});                              # get all the characteristics with types
			}
			warn "added ".(scalar @{$_[7]->[0]})." characteristics for $_[1]\n" if $tracing > 1;
		    }
	],
	[#Rule 15
		 'reification_indication', 0, undef
	],
	[#Rule 16
		 'reification_indication', 2,
sub
#line 221 "yapp/astma-fact.yp"
{ [ 1, $_[2] ] }
	],
	[#Rule 17
		 'reification_indication', 2,
sub
#line 222 "yapp/astma-fact.yp"
{ [ 0, $_[2] ] }
	],
	[#Rule 18
		 'reification_indication', 2,
sub
#line 223 "yapp/astma-fact.yp"
{ [ 2, $_[2] ] }
	],
	[#Rule 19
		 'types', 0,
sub
#line 226 "yapp/astma-fact.yp"
{ [] }
	],
	[#Rule 20
		 'types', 2,
sub
#line 227 "yapp/astma-fact.yp"
{ push @{$_[1]}, @{$_[2]}; $_[1] }
	],
	[#Rule 21
		 'type', 2,
sub
#line 230 "yapp/astma-fact.yp"
{ [ $_[2] ] }
	],
	[#Rule 22
		 'type', 3,
sub
#line 231 "yapp/astma-fact.yp"
{   $_[2]   }
	],
	[#Rule 23
		 'characteristics_indication', 0, undef
	],
	[#Rule 24
		 'characteristics_indication', 2,
sub
#line 236 "yapp/astma-fact.yp"
{ push @{$_[1]->[ ref($_[2]) eq 'ARRAY' ? 0 : 1 ]}, $_[2]; $_[1] }
	],
	[#Rule 25
		 'characteristic_indication', 1, undef
	],
	[#Rule 26
		 'characteristic_indication', 1, undef
	],
	[#Rule 27
		 '@2-1', 0,
sub
#line 244 "yapp/astma-fact.yp"
{ $_[0]->{USER}->{string} ||= "\n" }
	],
	[#Rule 28
		 'indication', 3,
sub
#line 245 "yapp/astma-fact.yp"
{ $_[3] }
	],
	[#Rule 29
		 '@3-1', 0,
sub
#line 248 "yapp/astma-fact.yp"
{ $_[0]->{USER}->{string} ||= "\n" }
	],
	[#Rule 30
		 'characteristic', 5,
sub
#line 249 "yapp/astma-fact.yp"
{                           # check whether we are dealing with URIs or strings
				                                       if ($_[1] == TM->NAME) {  # names are always strings
									   $_[5] = new TM::Literal  ($_[5], TM::Literal->STRING);
								       } elsif ($_[5] =~ /^\w+:\S+$/) { # can only be OCC, but is it URI?
									   $_[5] = new TM::Literal  ($_[5], TM::Literal->URI);
								       } else {                  # occurrence and not a URI -> string
									   $_[5] = new TM::Literal  ($_[5], TM::Literal->STRING);
								       }
## warn "char ".Dumper [ $_[1], $_[3], $_[4], $_[5] ];
								      [ $_[1], $_[3], $_[4], $_[5] ]
								      }
	],
	[#Rule 31
		 'class', 1,
sub
#line 262 "yapp/astma-fact.yp"
{ TM->NAME  }
	],
	[#Rule 32
		 'class', 1,
sub
#line 263 "yapp/astma-fact.yp"
{ TM->OCC  }
	],
	[#Rule 33
		 'class', 1,
sub
#line 264 "yapp/astma-fact.yp"
{ TM->OCC  }
	],
	[#Rule 34
		 'char_type', 0, undef
	],
	[#Rule 35
		 'char_type', 1, undef
	],
	[#Rule 36
		 'assoc_type', 3,
sub
#line 271 "yapp/astma-fact.yp"
{   $_[2]   }
	],
	[#Rule 37
		 'scope', 0, undef
	],
	[#Rule 38
		 'scope', 2,
sub
#line 275 "yapp/astma-fact.yp"
{ $_[2] }
	],
	[#Rule 39
		 'inline_assocs', 0, undef
	],
	[#Rule 40
		 'inline_assocs', 2,
sub
#line 280 "yapp/astma-fact.yp"
{ push @{$_[1]}, $_[2]; $_[1] }
	],
	[#Rule 41
		 'inline_assoc', 2,
sub
#line 283 "yapp/astma-fact.yp"
{ [ $_[1], $_[2] ] }
	],
	[#Rule 42
		 '@4-1', 0,
sub
#line 287 "yapp/astma-fact.yp"
{ ($_[0]->{USER}->{templates}, $_[0]->{USER}->{store}) = ($_[0]->{USER}->{store}, $_[0]->{USER}->{templates}); }
	],
	[#Rule 43
		 'template_definition', 3,
sub
#line 290 "yapp/astma-fact.yp"
{ ($_[0]->{USER}->{templates}, $_[0]->{USER}->{store}) = ($_[0]->{USER}->{store}, $_[0]->{USER}->{templates}); }
	],
	[#Rule 44
		 'association_definition', 7,
sub
#line 296 "yapp/astma-fact.yp"
{
##warn "members ".Dumper $_[5];
## ??? TODO SCOPE ????
			       my (@roles, @players);
			       foreach my $m (@{$_[7]}) {                 # one member
				   my $role = shift @$m;                  # first is role
				   while (@$m) {
				       push @roles, $role;                # roles repeat for every player
				       my $player = shift @$m;
				       push @players, $player;
				   }
			       }
			       my ($a) = $_[0]->{USER}->{store}->assert (bless [ undef, $_[4], $_[2], TM->ASSOC, \@roles, \@players, undef ], 'Assertion');
##warn "templates" .Dumper $_[0]->{USER}->{store};
                              { # reification
				  my $ms = $_[0]->{USER}->{store};
				  if (ref $_[5]) {
				      if ($_[5]->[0] == 1) {                   # 1 = REIFIES, 0 = IS-REIFIED
					  # (assoc) reifies http://.... means
					  #     1) the assoc will be addes as thing (is done already)
					  #     2) the http:// will be used as one subject indicator
					  die "reifier of association must be a URI\n" unless $_[5]->[1] =~ /^\w+:.+/;
					  $ms->internalize ($a->[TM::LID], $_[5]->[1]);
				      } elsif ($_[5]->[0] == 0) {              # something reifies this assoc
					  # (assoc) is-reified-by xxx   means
					  #     1) assoc is added as thing (is done already)
					  #     2) the local identifier is added as thing with the abs URL of the assoc as subject address
					  die "reifier must be local identifier\n" unless $_[5]->[1] =~ /^[A-Za-z][A-Za-z0-9_\.-]+$/;
					  $ms->internalize ($_[5]->[1] => $a);
				      } else { # this would be 'indication' but we do not want that here
					  die "indication for associations are undefined\n";
				      }
				  }
			      }

			       { # memorize that association type subclasses association
#				   my $implicits = $_[0]->{USER}->{implicits};

# implicit			   $implicits->{'subclasses'}->{'association'}->{$_[2]}++;
				   $_[0]->{USER}->{implicits}->{'isa-scope'}->{$_[4]}++ if $_[4];
			       }
			       warn "added assertion $_[2]\n" if $tracing;
			   }
	],
	[#Rule 45
		 'association_members', 1,
sub
#line 341 "yapp/astma-fact.yp"
{                       [ $_[1] ] }
	],
	[#Rule 46
		 'association_members', 2,
sub
#line 342 "yapp/astma-fact.yp"
{ push @{$_[1]}, $_[2];   $_[1]  }
	],
	[#Rule 47
		 'member', 4,
sub
#line 345 "yapp/astma-fact.yp"
{ [ $_[1], @{$_[3]} ] }
	],
	[#Rule 48
		 'eom', 1, undef
	],
	[#Rule 49
		 'eom', 2, undef
	],
	[#Rule 50
		 'ids1', 2,
sub
#line 352 "yapp/astma-fact.yp"
{ push @{$_[1]}, $_[2]; $_[1] }
	],
	[#Rule 51
		 'ids', 0,
sub
#line 355 "yapp/astma-fact.yp"
{ [] }
	],
	[#Rule 52
		 'ids', 2,
sub
#line 356 "yapp/astma-fact.yp"
{ push @{$_[1]}, $_[2]; $_[1] }
	],
	[#Rule 53
		 'string', 2,
sub
#line 359 "yapp/astma-fact.yp"
{ die "empty string in characteristics\n" unless $_[1]; $_[1] }
	]
],
				   %options);
    $self->{USER}->{store}         = $store;
    return bless $self, $class;
}

#line 362 "yapp/astma-fact.yp"


sub _Error {
    die "Syntax error: Found ".$_[0]->YYCurtok." but expected ".join (' or ', sort($_[0]->YYExpect))."\n";
}

use constant CHUNK_SIZE => 32000;

sub _Lexer {
    my $parser = shift;
    my $yydata = $parser->YYData;

    if (length ($yydata->{INPUT}) < 1024 && $yydata->{OFFSET} < $yydata->{TOTAL}) {
	$yydata->{INPUT}  .= substr ($yydata->{RESERVE}, $yydata->{OFFSET}, CHUNK_SIZE);
	$yydata->{OFFSET} += CHUNK_SIZE;
    }
    my $refINPUT = \$yydata->{INPUT};

    my $aux;                                                                           # need this to store identifier/uri prefix for optimization

    $$refINPUT                                        or  return ('',          undef);
    $$refINPUT =~ s/^[ \t]+//so;

#warn "lexer ($parser->{USER}->{string}):>>>".$parser->YYData->{INPUT}."<<<";

    $$refINPUT =~ s/^\n//so                           and return ('EOL',       	   undef);
    # note: these are notoriously imprecise and prohibit topics named in, rd, ex, oc or bn.
    $$refINPUT =~ s/^in\b(?![\.-])//o                 and return ('IN',        	   undef);
    $$refINPUT =~ s/^rd\b(?![\.-])//o                 and return ('IN',        	   undef);
    $$refINPUT =~ s/^oc\b(?![\.-])//o                 and return ('OC',        	   undef);
    $$refINPUT =~ s/^ex\b(?![\.-])//o                 and return ('OC',        	   undef);
    $$refINPUT =~ s/^bn\b(?![\.-])//o                 and return ('BN',        	   undef);

    $$refINPUT =~ s/^sin\s*(?=:)//o                and return ('SIN',       	   undef);
    $$refINPUT =~ s/^is-a\b(?![\.-])//o               and return ('ISA',       	   undef);
    $$refINPUT =~ s/^reifies\b(?![\.-])//o            and return ('REIFIES',   	   undef);
    $$refINPUT =~ s/^=//o                             and return ('REIFIES',   	   undef);
    $$refINPUT =~ s/^is-reified-by\b(?![\.-])//o      and return ('ISREIFIED', 	   undef);
    $$refINPUT =~ s/^~//o                             and return ('ISINDICATEDBY', undef);

    if (my $t = $parser->{USER}->{string}) {                                           # parser said we should expect a string now, defaults terminator to \n
##warn "scanning for string (..$t..) in ...". $$refINPUT . "....";
	$$refINPUT =~ s/^:\s*<<<\n/:/o                and                              # we know it better, it is <<<
	    $t = "\n<<<\n";

	$$refINPUT =~ s/^:\s*<<(\w+)\n/:/o            and                              # we know it better, it is <<SOMETHING
	    $t = "\n<<$1\n";

##warn "try finding string ..$t..  " ;
	$$refINPUT =~ s/^:\s*(.*?)\s*$t/\n/s          and
##            (warn "returning $1" or 1) and
	    (undef $parser->{USER}->{string}          or  return ('STRING',    $1));
##warn "no string";
    }

    $$refINPUT =~ s/^://o                             and return ('COLON',     undef);

## unfortunately, this does not what I want
##  $$refINPUT =~ s/^([A-Za-z][A-Za-z0-9_-]*)(?!:)//o and return ('ID',        $1); # negative look-ahead
## tricky optimization: don't ask
    $$refINPUT =~ s/^([A-Za-z][.A-Za-z0-9_-]*)//o     and $aux = $1                 # save this for later
	                                              and $$refINPUT !~ /^:[\w\/]/
                                                      and return ('ID',        $aux);

    $$refINPUT =~ s/^\(//so                           and return ('LPAREN',    undef);
    $$refINPUT =~ s/^\)//so                           and return ('RPAREN',    undef);
    $$refINPUT =~ s/^@//so                            and return ('AT',        undef);

    $$refINPUT =~ s/^(:[^\s\)\(\]\[]+)//o             and return ('ID',        $aux.$1); # is a URL/URN actually

    $$refINPUT =~ s/^(\d{4}-\d{1,2}-\d{1,2})(\s+(\d{1,2}):(\d{2}))?//o
                                                      and return ('ID',        sprintf "urn:x-date:%s:%02d:%02d", $1, $3 || 0, $4 || 0); # is a date

    $$refINPUT =~ s/^%include\s+(.*?)(?=\n)//so
	and return ('INCLUDE',   $1); # positive look-ahead
    $$refINPUT =~ s/^%log\s+(.*?)(?=\n)//so           and return ('LOG',       $1); # positive look-ahead
    $$refINPUT =~ s/^%cancel\s*(?=\n)//so             and return ('CANCEL',    $1); # positive look-ahead
    $$refINPUT =~ s/^%trace\s+(.*?)(?=\n)//so         and return ('TRACE',     $1); # positive look-ahead
    $$refINPUT =~ s/^%encoding\s+(.*?)(?=\n)//so      and return ('ENCODING',  $1); # positive look-ahead

    $$refINPUT =~ s/^\*//o                            and return ('ID',        sprintf "uuid-%010d", $TM::toplet_ctr++); ## $parser->{USER}->{topic_count}++);

    $$refINPUT =~ s/^\[//so                           and return ('LBRACKET',  undef);
    $$refINPUT =~ s/^\]//so                           and return ('RBRACKET',  undef);
    # should not be an issue except on error
    $$refINPUT =~ s/^(.)//so                          and return ($1,          $1);

}

sub parse {
    my $self  = shift;
    $_        = shift;

    s/\r\n/\n/sg;
    s/\r/\n/sg;
    s/(?<!\\)\\\n//sg;       						# a \, but not a \\
    s/ \~ /\n/g;             						# replace _~_ with \n
    s/ \~\~ / \~ /g;         						# stuffed ~~ cleanout
    s/^\#.*?\n/\n/mg;        						# # at the start of every line -> gone
    s/\s\#.*?\n/\n/mg;       						# anything which starts with <blank># -> gone
    s/(?<!\\)\\\#/\#/g;      						# but # can be escaped with a single \, as in \#
    s/\n\n\n+/\n\n/sg;       						# canonicalize line break (line count is gone already)

    # we not only capture what is said EXPLICITELY in the map, we also collect implicit knowledge
    # we could add this immediately into the map at parsing, but it would slow the process down and
    # it would probably duplicate/complicate things
    $self->{USER}->{implicits} = {
	'isa-thing'  => undef,                                          # just let them spring into existence
	'isa-scope'  => undef,                                          # just let them spring into existence
	'subclasses' => undef
	};
                                                                        # clone a pseudo map into which to store templates as assocs temporarily
    $self->{USER}->{templates} = new TM (baseuri => $self->{USER}->{store}->baseuri);

    $self->YYData->{INPUT}   = '';
    $self->YYData->{RESERVE} = $_;                                      # here we park the whole string
    $self->YYData->{TOTAL}   = length ($_);                             # this is how much we have in the reserve
    $self->YYData->{OFFSET}  = 0;                                       # and we start at index 0

    eval {
	$self->YYParse ( yylex => \&_Lexer, yyerror => \&_Error );
    }; if ($@ =~ /^Parsing cancelled/) {
	warn $@."\n";                                                        # de-escalate Cancelling to warning
    } elsif ($@) {
	die $@."\n";                                                         # otherwise re-raise the exception
    }


    { # resolving implicit stuff
	my $implicits = $self->{USER}->{implicits};
	my $store     = $self->{USER}->{store};

	{ # all super/subclasses
	    foreach my $superclass (keys %{$implicits->{'subclasses'}}) {
		$store->assert ( map {
		    bless [ undef, undef, 'is-subclass-of', TM->ASSOC, [ 'superclass', 'subclass' ], [ $superclass, $_ ] ], 'Assertion'
		    }  keys %{$implicits->{'subclasses'}->{$superclass}});
	    }
#warn "done with subclasses";
	}
	{ # all things in isa-things are THINGS, simply add them
##warn "isa things ".Dumper [keys %{$implicits->{'isa-thing'}}];
	    $store->internalize (map { $_ => undef } keys %{$implicits->{'isa-thing'}});
	}
	{ # establishing the scoping topics
	    $store->assert (map {
                                 bless [ undef, undef, 'isa', TM->ASSOC, [ 'class', 'instance' ], [ 'scope', $_ ] ], 'Assertion'
				 } keys %{$implicits->{'isa-scope'}});
	}
    }

    return $self->{USER}->{store};
}

#my $f = new TM::AsTMa::Fact;
#$f->Run;


1;
