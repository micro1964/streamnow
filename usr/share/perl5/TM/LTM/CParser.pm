package TM::LTM::CParser;
use Parse::RecDescent;
{ my $ERRORS;


package Parse::RecDescent::TM::LTM::CParser;
use strict;
use vars qw($skip $AUTOLOAD  );
@Parse::RecDescent::TM::LTM::CParser::ISA = ();
$skip = '\s*';

			  my $store;
			  my $log;
			  my $implicits;
			  use Data::Dumper;
			  use TM;
			  use TM::Literal;

			  my %prefixes;
		      ;


{
local $SIG{__WARN__} = sub {0};
# PRETEND TO BE IN Parse::RecDescent NAMESPACE
*Parse::RecDescent::TM::LTM::CParser::AUTOLOAD   = sub
{
    no strict 'refs';

    ${"AUTOLOAD"} =~ s/^Parse::RecDescent::TM::LTM::CParser/Parse::RecDescent/;
    goto &{${"AUTOLOAD"}};
}
}

push @Parse::RecDescent::TM::LTM::CParser::ISA, 'Parse::RecDescent';
# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::resource
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"resource"};

    Parse::RecDescent::_trace(q{Trying rule: [resource]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{resource},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{uri, or DATA});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [uri]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{resource},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{resource});
        %item = (__RULE__ => q{resource});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [uri]},
                  Parse::RecDescent::_tracefirst($text),
                  q{resource},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::uri($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [uri]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{resource},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [uri]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{resource},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{uri}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{resource},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = new TM::Literal ($item[1], 'xsd:uri') };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [uri]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{resource},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [DATA]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{resource},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{resource});
        %item = (__RULE__ => q{resource});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [DATA]},
                  Parse::RecDescent::_tracefirst($text),
                  q{resource},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::DATA($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [DATA]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{resource},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [DATA]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{resource},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{DATA}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{resource},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = new TM::Literal ($item[1], 'xsd:string') };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [DATA]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{resource},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{resource},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{resource},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{resource},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{resource},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::_alternation_1_of_production_1_of_rule_assocrole
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_assocrole"};

    Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_assocrole]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_assocrole},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{topic, or name});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [topic]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_assocrole},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_assocrole});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_assocrole});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [topic]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_assocrole},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::topic($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [topic]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_assocrole},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [topic]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_assocrole},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{topic}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [topic]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_assocrole},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [name]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_assocrole},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_assocrole});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_assocrole});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_assocrole},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::name($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_assocrole},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_assocrole},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [name]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_assocrole},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_assocrole},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_assocrole},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_assocrole},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_assocrole},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::role
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"role"};

    Parse::RecDescent::_trace(q{Trying rule: [role]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{role},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{':'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [':' name]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{role},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{role});
        %item = (__RULE__ => q{role});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [':']},
                      Parse::RecDescent::_tracefirst($text),
                      q{role},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\:/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{role},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{name})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::name($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{role},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{role},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [':' name]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{role},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{role},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{role},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{role},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{role},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::topicmapid_directive
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"topicmapid_directive"};

    Parse::RecDescent::_trace(q{Trying rule: [topicmapid_directive]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{topicmapid_directive},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'#TOPICMAP'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['#TOPICMAP' name, or reify]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{topicmapid_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{topicmapid_directive});
        %item = (__RULE__ => q{topicmapid_directive});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['#TOPICMAP']},
                      Parse::RecDescent::_tracefirst($text),
                      q{topicmapid_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\#TOPICMAP/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_topicmapid_directive]},
                  Parse::RecDescent::_tracefirst($text),
                  q{topicmapid_directive},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{name, or reify})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::_alternation_1_of_production_1_of_rule_topicmapid_directive($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_topicmapid_directive]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{topicmapid_directive},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_topicmapid_directive]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{topicmapid_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_topicmapid_directive}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{topicmapid_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
			  $log->logdie (__PACKAGE__ . ": TOPICMAP directive ignored (use proper means)");
		      };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['#TOPICMAP' name, or reify]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{topicmapid_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{topicmapid_directive},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{topicmapid_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{topicmapid_directive},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{topicmapid_directive},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::topic_map
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"topic_map"};

    Parse::RecDescent::_trace(q{Trying rule: [topic_map]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{topic_map},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{encoding});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [encoding directive component]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{topic_map},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{topic_map});
        %item = (__RULE__ => q{topic_map});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying repeated subrule: [encoding]},
                  Parse::RecDescent::_tracefirst($text),
                  q{topic_map},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::encoding, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [encoding]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{topic_map},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [encoding]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{topic_map},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{encoding(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [directive]},
                  Parse::RecDescent::_tracefirst($text),
                  q{topic_map},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{directive})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::directive, 0, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [directive]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{topic_map},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [directive]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{topic_map},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{directive(s?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [component]},
                  Parse::RecDescent::_tracefirst($text),
                  q{topic_map},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{component})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::component, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [component]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{topic_map},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [component]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{topic_map},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{component(s)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{>>Matched production: [encoding directive component]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{topic_map},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{topic_map},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{topic_map},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{topic_map},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{topic_map},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::reify
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"reify"};

    Parse::RecDescent::_trace(q{Trying rule: [reify]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{reify},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'~'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['~' name]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{reify},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{reify});
        %item = (__RULE__ => q{reify});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['~']},
                      Parse::RecDescent::_tracefirst($text),
                      q{reify},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\~/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{reify},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{name})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::name($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{reify},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{reify},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: ['~' name]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{reify},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{reify},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{reify},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{reify},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{reify},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::topname
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"topname"};

    Parse::RecDescent::_trace(q{Trying rule: [topname]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{topname},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'='});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['=' basesortdispname scope]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{topname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{topname});
        %item = (__RULE__ => q{topname});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['=']},
                      Parse::RecDescent::_tracefirst($text),
                      q{topname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\=/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [basesortdispname]},
                  Parse::RecDescent::_tracefirst($text),
                  q{topname},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{basesortdispname})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::basesortdispname($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [basesortdispname]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{topname},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [basesortdispname]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{topname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{basesortdispname}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [scope]},
                  Parse::RecDescent::_tracefirst($text),
                  q{topname},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{scope})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::scope, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [scope]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{topname},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [scope]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{topname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{scope(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{topname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
#warn "basenames".Dumper \@item;
			  $return = {
			      scope    => $item[3],
			      names    => $item[2],
			  };
		      };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['=' basesortdispname scope]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{topname},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{topname},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{topname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{topname},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{topname},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::occur
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"occur"};

    Parse::RecDescent::_trace(q{Trying rule: [occur]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{occur},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'\{'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['\{' occ_topic ',' occ_type ',' resource '\}' scope reify]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{occur},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{occur});
        %item = (__RULE__ => q{occur});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['\{']},
                      Parse::RecDescent::_tracefirst($text),
                      q{occur},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\{/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [occ_topic]},
                  Parse::RecDescent::_tracefirst($text),
                  q{occur},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{occ_topic})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::occ_topic($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [occ_topic]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{occur},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [occ_topic]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{occur},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{occ_topic}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [',']},
                      Parse::RecDescent::_tracefirst($text),
                      q{occur},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{','})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\,/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [occ_type]},
                  Parse::RecDescent::_tracefirst($text),
                  q{occur},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{occ_type})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::occ_type($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [occ_type]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{occur},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [occ_type]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{occur},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{occ_type}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [',']},
                      Parse::RecDescent::_tracefirst($text),
                      q{occur},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{','})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\,/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING3__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [resource]},
                  Parse::RecDescent::_tracefirst($text),
                  q{occur},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{resource})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::resource($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [resource]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{occur},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [resource]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{occur},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{resource}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: ['\}']},
                      Parse::RecDescent::_tracefirst($text),
                      q{occur},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{'\}'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\}/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING4__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying repeated subrule: [scope]},
                  Parse::RecDescent::_tracefirst($text),
                  q{occur},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{scope})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::scope, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [scope]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{occur},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [scope]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{occur},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{scope(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [reify]},
                  Parse::RecDescent::_tracefirst($text),
                  q{occur},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{reify})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::reify, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [reify]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{occur},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [reify]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{occur},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{reify(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{occur},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
			  my $id = $store->internalize ($item[2]);
			  my ($a) = $store->assert ([ undef,                                         # LID
						      $item[8]->[0],                                 # SCOPE
						      $item[4],                                      # TYPE (MUST BE DEFINED!)
						      TM->OCC,                                       # KIND
						      [ 'thing', 'value' ],                          # ROLES
						      [ $id,     $item[6] ],                         # PLAYERS
						      undef ]);

			 { # memorize basename types and scopes as implicitely defined
			     $implicits->{'isa-scope'}-> { $item[8]->[0] }++ if $item[8]->[0];       # get the bloody scopes and tuck them away
			     $implicits->{'subclasses'}->{ 'occurrence' }->{ $item[4] }++;
			 }

#warn "reify ".Dumper $item[9];
			  $store->internalize ($item[9]->[0], $a->[TM->LID]) if $item[9]->[0];

			  $return = $a;
		      };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['\{' occ_topic ',' occ_type ',' resource '\}' scope reify]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{occur},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{occur},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{occur},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{occur},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{occur},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::_alternation_1_of_production_1_of_rule_topicmapid_directive
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_topicmapid_directive"};

    Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_topicmapid_directive]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{name, or reify});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [name]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_topicmapid_directive});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_topicmapid_directive});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::name($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [name]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [reify]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{_alternation_1_of_production_1_of_rule_topicmapid_directive});
        %item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_topicmapid_directive});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [reify]},
                  Parse::RecDescent::_tracefirst($text),
                  q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::reify($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [reify]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [reify]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{reify}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [reify]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{_alternation_1_of_production_1_of_rule_topicmapid_directive},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::DATA
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"DATA"};

    Parse::RecDescent::_trace(q{Trying rule: [DATA]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{DATA},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'[['});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['[[' /.*(?=\\]\\])/sx ']]']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{DATA},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{DATA});
        %item = (__RULE__ => q{DATA});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['[[']},
                      Parse::RecDescent::_tracefirst($text),
                      q{DATA},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\[\[/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [/.*(?=\\]\\])/sx]}, Parse::RecDescent::_tracefirst($text),
                      q{DATA},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/.*(?=\\]\\])/sx})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:.*(?=\]\]))/sx)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [']]']},
                      Parse::RecDescent::_tracefirst($text),
                      q{DATA},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{']]'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\]\]/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{DATA},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item[2]; };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['[[' /.*(?=\\]\\])/sx ']]']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{DATA},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{DATA},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{DATA},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{DATA},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{DATA},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::indicator
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"indicator"};

    Parse::RecDescent::_trace(q{Trying rule: [indicator]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{indicator},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'@'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['@' uri]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{indicator},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{indicator});
        %item = (__RULE__ => q{indicator});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['@']},
                      Parse::RecDescent::_tracefirst($text),
                      q{indicator},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\@/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [uri]},
                  Parse::RecDescent::_tracefirst($text),
                  q{indicator},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{uri})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::uri($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [uri]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{indicator},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [uri]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{indicator},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{uri}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{indicator},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = \ $item[2]; };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['@' uri]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{indicator},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{indicator},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{indicator},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{indicator},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{indicator},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::mergemap_directive
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"mergemap_directive"};

    Parse::RecDescent::_trace(q{Trying rule: [mergemap_directive]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{mergemap_directive},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'#MERGEMAP'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['#MERGEMAP' uri tm_format]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{mergemap_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{mergemap_directive});
        %item = (__RULE__ => q{mergemap_directive});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['#MERGEMAP']},
                      Parse::RecDescent::_tracefirst($text),
                      q{mergemap_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\#MERGEMAP/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [uri]},
                  Parse::RecDescent::_tracefirst($text),
                  q{mergemap_directive},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{uri})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::uri($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [uri]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{mergemap_directive},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [uri]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{mergemap_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{uri}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [tm_format]},
                  Parse::RecDescent::_tracefirst($text),
                  q{mergemap_directive},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{tm_format})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::tm_format, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [tm_format]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{mergemap_directive},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [tm_format]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{mergemap_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{tm_format(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{mergemap_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
			  my $uri = $item[2];
#warn "uri is $uri";
			  my $format = $item[3]->[0] ? $item[3]->[0] : 'ltm';
			  my $tm;
			  if ($format =~ /^ltm$/i) {
			      $tm = new TM::Materialized::LTM (url => $uri);
			  } elsif ($format =~ /^xtm$/i) {
			      $tm = new TM::Materialized::XTM (url => $uri);
			  } elsif ($format =~ /^astma$/i) {
			      $tm = new TM::Materialized::AsTMa (url => $uri);
			  } else {
			      $log->logdie (__PACKAGE__ . ": unsupported TM format '$format'");
			  }
			  $tm->sync_in;
			  $store->add ($tm);
#warn "after merged in".Dumper $store;
			  $return = $uri;
		      };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['#MERGEMAP' uri tm_format]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{mergemap_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{mergemap_directive},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{mergemap_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{mergemap_directive},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{mergemap_directive},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::baseuri_directive
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"baseuri_directive"};

    Parse::RecDescent::_trace(q{Trying rule: [baseuri_directive]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{baseuri_directive},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'#BASEURI'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['#BASEURI' uri]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{baseuri_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{baseuri_directive});
        %item = (__RULE__ => q{baseuri_directive});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['#BASEURI']},
                      Parse::RecDescent::_tracefirst($text),
                      q{baseuri_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\#BASEURI/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [uri]},
                  Parse::RecDescent::_tracefirst($text),
                  q{baseuri_directive},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{uri})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::uri($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [uri]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{baseuri_directive},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [uri]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{baseuri_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{uri}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: ['#BASEURI' uri]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{baseuri_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{baseuri_directive},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{baseuri_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{baseuri_directive},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{baseuri_directive},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::assoc
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"assoc"};

    Parse::RecDescent::_trace(q{Trying rule: [assoc]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{assoc},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{name});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [name '(' assocroles ')' scope reify]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{assoc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{assoc});
        %item = (__RULE__ => q{assoc});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{assoc},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::name($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{assoc},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{assoc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: ['(']},
                      Parse::RecDescent::_tracefirst($text),
                      q{assoc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{'('})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\(/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [assocroles]},
                  Parse::RecDescent::_tracefirst($text),
                  q{assoc},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{assocroles})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::assocroles($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [assocroles]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{assoc},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [assocroles]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{assoc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{assocroles}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying terminal: [')']},
                      Parse::RecDescent::_tracefirst($text),
                      q{assoc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{')'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying repeated subrule: [scope]},
                  Parse::RecDescent::_tracefirst($text),
                  q{assoc},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{scope})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::scope, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [scope]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{assoc},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [scope]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{assoc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{scope(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [reify]},
                  Parse::RecDescent::_tracefirst($text),
                  q{assoc},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{reify})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::reify, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [reify]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{assoc},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [reify]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{assoc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{reify(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{assoc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
#warn "assoc item " . Dumper \@item;
			  { # memorize that association type subclasses association
			      $implicits->{'isa-scope'}->{ $item[5]->[0] }++ if $item[5]->[0];
			  }
			  my ($a) = $store->assert ([ undef,                                            # LID
							 $item[5] && $item[5]->[0],                     # SCOPE
							 $item[1],                                      # TYPE
							 TM->ASSOC,                                     # KIND
							 [ map { $_->[1] } @{$item[3]} ],               # ROLES
							 [ map { $_->[0] } @{$item[3]} ],               # PLAYERS
							 undef ]);
#warn "reify ".Dumper $item[6];
			  $store->internalize ($item[6]->[0], $a->[TM->LID]) if $item[6]->[0];
			  $return = $a;
		      };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [name '(' assocroles ')' scope reify]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{assoc},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{assoc},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{assoc},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{assoc},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{assoc},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::tm_format
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"tm_format"};

    Parse::RecDescent::_trace(q{Trying rule: [tm_format]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{tm_format},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{string});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [string]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{tm_format},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{tm_format});
        %item = (__RULE__ => q{tm_format});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [string]},
                  Parse::RecDescent::_tracefirst($text),
                  q{tm_format},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::string($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [string]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{tm_format},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [string]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{tm_format},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{string}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [string]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{tm_format},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{tm_format},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{tm_format},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{tm_format},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{tm_format},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::assocrole
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"assocrole"};

    Parse::RecDescent::_trace(q{Trying rule: [assocrole]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{assocrole},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{topic, or name});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [topic, or name role]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{assocrole},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{assocrole});
        %item = (__RULE__ => q{assocrole});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_assocrole]},
                  Parse::RecDescent::_tracefirst($text),
                  q{assocrole},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::_alternation_1_of_production_1_of_rule_assocrole($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_assocrole]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{assocrole},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_assocrole]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{assocrole},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{_alternation_1_of_production_1_of_rule_assocrole}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [role]},
                  Parse::RecDescent::_tracefirst($text),
                  q{assocrole},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{role})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::role, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [role]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{assocrole},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [role]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{assocrole},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{role(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{assocrole},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
                          $return = [ $item[1], $item[2]->[0] || 'thing' ];
		      };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [topic, or name role]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{assocrole},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{assocrole},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{assocrole},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{assocrole},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{assocrole},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::uri
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"uri"};

    Parse::RecDescent::_trace(q{Trying rule: [uri]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{uri},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{string});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [string]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{uri},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{uri});
        %item = (__RULE__ => q{uri});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [string]},
                  Parse::RecDescent::_tracefirst($text),
                  q{uri},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::string($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [string]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{uri},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [string]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{uri},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{string}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [string]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{uri},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{uri},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{uri},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{uri},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{uri},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::startrule
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"startrule"};

    Parse::RecDescent::_trace(q{Trying rule: [startrule]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{startrule},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [topic_map]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{startrule});
        %item = (__RULE__ => q{startrule});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $store = $arg[0]; $log = $arg[1]; $implicits = $arg[2] };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{Trying subrule: [topic_map]},
                  Parse::RecDescent::_tracefirst($text),
                  q{startrule},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{topic_map})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::topic_map($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [topic_map]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{startrule},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [topic_map]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{topic_map}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [topic_map]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{startrule},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{startrule},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{startrule},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{startrule},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::types
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"types"};

    Parse::RecDescent::_trace(q{Trying rule: [types]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{types},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{':'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [':' name]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{types},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{types});
        %item = (__RULE__ => q{types});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [':']},
                      Parse::RecDescent::_tracefirst($text),
                      q{types},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\:/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying repeated subrule: [name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{types},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{name})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::name, 1, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{types},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [name]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{types},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name(s)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{types},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item[2]; };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [':' name]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{types},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{types},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{types},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{types},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{types},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::assocroles
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"assocroles"};

    Parse::RecDescent::_trace(q{Trying rule: [assocroles]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{assocroles},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{<leftop: assocrole /,/ assocrole>});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [<leftop: assocrole /,/ assocrole>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{assocroles},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{assocroles});
        %item = (__RULE__ => q{assocroles});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying operator: [<leftop: assocrole /,/ assocrole>]},
                  Parse::RecDescent::_tracefirst($text),
                  q{assocroles},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);

        $_tok = undef;
        OPLOOP: while (1)
        {
          $repcount = 0;
          my @item;
          my %item;

          # MATCH LEFTARG
          
        Parse::RecDescent::_trace(q{Trying subrule: [assocrole]},
                  Parse::RecDescent::_tracefirst($text),
                  q{assocroles},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{assocrole})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::assocrole($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [assocrole]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{assocroles},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [assocrole]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{assocroles},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{assocrole}} = $_tok;
        push @item, $_tok;
        
        }



          $repcount++;

          my $savetext = $text;
          my $backtrack;

          # MATCH (OP RIGHTARG)(s)
          while ($repcount < 100000000)
          {
            $backtrack = 0;
            
        Parse::RecDescent::_trace(q{Trying terminal: [/,/]}, Parse::RecDescent::_tracefirst($text),
                      q{assocroles},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/,/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:,)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

            pop @item;
            if (defined $1) {push @item, $item{'assocrole(s)'}=$1; $backtrack=1;}
            
        Parse::RecDescent::_trace(q{Trying subrule: [assocrole]},
                  Parse::RecDescent::_tracefirst($text),
                  q{assocroles},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{assocrole})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::assocrole($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [assocrole]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{assocroles},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [assocrole]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{assocroles},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{assocrole}} = $_tok;
        push @item, $_tok;
        
        }

            $savetext = $text;
            $repcount++;
          }
          $text = $savetext;
          pop @item if $backtrack;

          unless (@item) { undef $_tok; last }
          $_tok = [ @item ];

          last;
        } # end of OPLOOP

        unless ($repcount>=1)
        {
            Parse::RecDescent::_trace(q{<<Didn't match operator: [<leftop: assocrole /,/ assocrole>]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{assocroles},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched operator: [<leftop: assocrole /,/ assocrole>]<< (return value: [}
                      . qq{@{$_tok||[]}} . q{]},
                      Parse::RecDescent::_tracefirst($text),
                      q{assocroles},
                      $tracelevel)
                        if defined $::RD_TRACE;

        push @item, $item{'assocrole(s)'}=$_tok||[];

        Parse::RecDescent::_trace(q{>>Matched production: [<leftop: assocrole /,/ assocrole>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{assocroles},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{assocroles},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{assocroles},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{assocroles},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{assocroles},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::basesortdispname
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"basesortdispname"};

    Parse::RecDescent::_trace(q{Trying rule: [basesortdispname]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{basesortdispname},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{<leftop: basename ';' basename>});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [<leftop: basename ';' basename>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{basesortdispname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{basesortdispname});
        %item = (__RULE__ => q{basesortdispname});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying operator: [<leftop: basename ';' basename>]},
                  Parse::RecDescent::_tracefirst($text),
                  q{basesortdispname},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{})->at($text);

        $_tok = undef;
        OPLOOP: while (1)
        {
          $repcount = 0;
          my @item;
          my %item;

          # MATCH LEFTARG
          
        Parse::RecDescent::_trace(q{Trying subrule: [basename]},
                  Parse::RecDescent::_tracefirst($text),
                  q{basesortdispname},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{basename})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::basename($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [basename]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{basesortdispname},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [basename]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{basesortdispname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{basename}} = $_tok;
        push @item, $_tok;
        
        }



          $repcount++;

          my $savetext = $text;
          my $backtrack;

          # MATCH (OP RIGHTARG)(s)
          while ($repcount < 100000000)
          {
            $backtrack = 0;
            
        Parse::RecDescent::_trace(q{Trying terminal: [';']},
                      Parse::RecDescent::_tracefirst($text),
                      q{basesortdispname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{';'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\;/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

            pop @item;
            
            
        Parse::RecDescent::_trace(q{Trying subrule: [basename]},
                  Parse::RecDescent::_tracefirst($text),
                  q{basesortdispname},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{basename})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::basename($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [basename]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{basesortdispname},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [basename]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{basesortdispname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{basename}} = $_tok;
        push @item, $_tok;
        
        }

            $savetext = $text;
            $repcount++;
          }
          $text = $savetext;
          pop @item if $backtrack;

          unless (@item) { undef $_tok; last }
          $_tok = [ @item ];

          last;
        } # end of OPLOOP

        unless ($repcount>=1)
        {
            Parse::RecDescent::_trace(q{<<Didn't match operator: [<leftop: basename ';' basename>]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{basesortdispname},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched operator: [<leftop: basename ';' basename>]<< (return value: [}
                      . qq{@{$_tok||[]}} . q{]},
                      Parse::RecDescent::_tracefirst($text),
                      q{basesortdispname},
                      $tracelevel)
                        if defined $::RD_TRACE;

        push @item, $item{__DIRECTIVE1__}=$_tok||[];

        Parse::RecDescent::_trace(q{>>Matched production: [<leftop: basename ';' basename>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{basesortdispname},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{basesortdispname},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{basesortdispname},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{basesortdispname},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{basesortdispname},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::directive
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"directive"};

    Parse::RecDescent::_trace(q{Trying rule: [directive]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{directive},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{version_directive, or topicmapid_directive, or mergemap_directive, or prefix_directive, or baseuri_directive});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [version_directive]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{directive});
        %item = (__RULE__ => q{directive});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [version_directive]},
                  Parse::RecDescent::_tracefirst($text),
                  q{directive},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::version_directive($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [version_directive]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{directive},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [version_directive]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{version_directive}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [version_directive]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [topicmapid_directive]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{directive});
        %item = (__RULE__ => q{directive});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [topicmapid_directive]},
                  Parse::RecDescent::_tracefirst($text),
                  q{directive},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::topicmapid_directive($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [topicmapid_directive]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{directive},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [topicmapid_directive]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{topicmapid_directive}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [topicmapid_directive]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [mergemap_directive]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{directive});
        %item = (__RULE__ => q{directive});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [mergemap_directive]},
                  Parse::RecDescent::_tracefirst($text),
                  q{directive},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::mergemap_directive($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [mergemap_directive]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{directive},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [mergemap_directive]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{mergemap_directive}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [mergemap_directive]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [prefix_directive]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[3];
        $text = $_[1];
        my $_savetext;
        @item = (q{directive});
        %item = (__RULE__ => q{directive});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [prefix_directive]},
                  Parse::RecDescent::_tracefirst($text),
                  q{directive},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::prefix_directive($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [prefix_directive]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{directive},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [prefix_directive]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{prefix_directive}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [prefix_directive]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [baseuri_directive]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[4];
        $text = $_[1];
        my $_savetext;
        @item = (q{directive});
        %item = (__RULE__ => q{directive});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [baseuri_directive]},
                  Parse::RecDescent::_tracefirst($text),
                  q{directive},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::baseuri_directive($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [baseuri_directive]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{directive},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [baseuri_directive]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{baseuri_directive}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [baseuri_directive]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{directive},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{directive},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{directive},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::subject
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"subject"};

    Parse::RecDescent::_trace(q{Trying rule: [subject]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{subject},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'%'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['%' uri]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{subject},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{subject});
        %item = (__RULE__ => q{subject});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['%']},
                      Parse::RecDescent::_tracefirst($text),
                      q{subject},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\%/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [uri]},
                  Parse::RecDescent::_tracefirst($text),
                  q{subject},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{uri})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::uri($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [uri]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{subject},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [uri]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{subject},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{uri}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{subject},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item[2]; };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['%' uri]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{subject},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{subject},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{subject},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{subject},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{subject},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::encoding
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"encoding"};

    Parse::RecDescent::_trace(q{Trying rule: [encoding]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{encoding},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'@'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['@' string]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{encoding},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{encoding});
        %item = (__RULE__ => q{encoding});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['@']},
                      Parse::RecDescent::_tracefirst($text),
                      q{encoding},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\@/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [string]},
                  Parse::RecDescent::_tracefirst($text),
                  q{encoding},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{string})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::string($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [string]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{encoding},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [string]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{encoding},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{string}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: ['@' string]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{encoding},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{encoding},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{encoding},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{encoding},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{encoding},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::version_directive
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"version_directive"};

    Parse::RecDescent::_trace(q{Trying rule: [version_directive]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{version_directive},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'#VERSION'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['#VERSION' string]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{version_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{version_directive});
        %item = (__RULE__ => q{version_directive});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['#VERSION']},
                      Parse::RecDescent::_tracefirst($text),
                      q{version_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\#VERSION/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [string]},
                  Parse::RecDescent::_tracefirst($text),
                  q{version_directive},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{string})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::string($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [string]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{version_directive},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [string]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{version_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{string}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{version_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
			  my $version = $item[2];
			  $log->logdie (__PACKAGE__ . ": VERSION not supported '$version'") unless $version =~ /^1\.[23]$/;
		      };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['#VERSION' string]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{version_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{version_directive},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{version_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{version_directive},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{version_directive},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::component
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"component"};

    Parse::RecDescent::_trace(q{Trying rule: [component]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{component},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{topic, or assoc, or occur});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [topic]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{component},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{component});
        %item = (__RULE__ => q{component});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [topic]},
                  Parse::RecDescent::_tracefirst($text),
                  q{component},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::topic($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [topic]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{component},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [topic]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{component},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{topic}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [topic]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{component},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [assoc]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{component},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{component});
        %item = (__RULE__ => q{component});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [assoc]},
                  Parse::RecDescent::_tracefirst($text),
                  q{component},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::assoc($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [assoc]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{component},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [assoc]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{component},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{assoc}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [assoc]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{component},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [occur]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{component},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[2];
        $text = $_[1];
        my $_savetext;
        @item = (q{component});
        %item = (__RULE__ => q{component});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [occur]},
                  Parse::RecDescent::_tracefirst($text),
                  q{component},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::occur($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [occur]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{component},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [occur]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{component},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{occur}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [occur]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{component},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{component},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{component},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{component},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{component},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::topic
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"topic"};

    Parse::RecDescent::_trace(q{Trying rule: [topic]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{topic},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'['});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['[' name types topname reify subject indicator ']']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{topic},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{topic});
        %item = (__RULE__ => q{topic});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['[']},
                      Parse::RecDescent::_tracefirst($text),
                      q{topic},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\[/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{topic},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{name})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::name($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{topic},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{topic},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying repeated subrule: [types]},
                  Parse::RecDescent::_tracefirst($text),
                  q{topic},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{types})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::types, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [types]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{topic},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [types]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{topic},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{types(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [topname]},
                  Parse::RecDescent::_tracefirst($text),
                  q{topic},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{topname})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::topname, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [topname]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{topic},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [topname]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{topic},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{topname(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [reify]},
                  Parse::RecDescent::_tracefirst($text),
                  q{topic},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{reify})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::reify, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [reify]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{topic},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [reify]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{topic},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{reify(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [subject]},
                  Parse::RecDescent::_tracefirst($text),
                  q{topic},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{subject})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::subject, 0, 1, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [subject]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{topic},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [subject]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{topic},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{subject(?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying repeated subrule: [indicator]},
                  Parse::RecDescent::_tracefirst($text),
                  q{topic},
                  $tracelevel)
                    if defined $::RD_TRACE;
        $expectation->is(q{indicator})->at($text);
        
        unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::TM::LTM::CParser::indicator, 0, 100000000, $_noactions,$expectation,sub { \@arg },undef)))
        {
            Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [indicator]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{topic},
                          $tracelevel)
                            if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched repeated subrule: [indicator]<< (}
                    . @$_tok . q{ times)},

                      Parse::RecDescent::_tracefirst($text),
                      q{topic},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{indicator(s?)}} = $_tok;
        push @item, $_tok;
        


        Parse::RecDescent::_trace(q{Trying terminal: [']']},
                      Parse::RecDescent::_tracefirst($text),
                      q{topic},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{']'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\]/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{topic},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
#warn "topic ".Dumper \@item;
			  my $id = $store->internalize ($item[2] => $item[6]->[0]); # maybe there is a subject addr, maybe not

			  # add the subject indicators
			  map { $store->internalize ($id => $_ ) } @{$item[7]};


			  if ($item[3] and $item[3]->[0]) {
			      $store->assert ( map {
                                                       [ undef, 
							 undef, 
							 'isa', 
							 undef,
							 [ 'class', 'instance' ], 
							 [ $_,       $id ],
							 ] }  
						         @{$item[3]->[0]} );
			      map { $implicits->{'isa-thing'}->{$_}++ } @{$item[3]->[0]};   # the types and the ID are declared implicitely
			  }
#warn "item 4".Dumper $item[4];
			  if ($item[4] and @{$item[4]}) {
			      my $topnames = $item[4]->[0];
#warn "topnames ".Dumper $topnames;
			      my ($a) = $store->assert ( map {[ undef,                                            # LID
								   $topnames->{scope}->[0],                       # SCOPE
								   'name',                                        # TYPE
								   TM->NAME,                                      # KIND
								   [ 'thing', 'value' ],                          # ROLES
								   [ $id,     $_ ],                               # PLAYERS
								   undef ] }
							    @{$topnames->{names}}[0] );       # use the first for a name
			      $return = $a;
# TODO (2..3) for the variants

#warn "basename reify ".Dumper $item[5];
			      # reification of the basename
			      $store->internalize ($item[5]->[0], $a->[TM->LID]) if $item[5]->[0];

			      {
				  map { $implicits->{'isa-scope'}->{ $_ }++ } @{$topnames->{scope}};
			      }
			  }

			  $return = $id;
		      };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['[' name types topname reify subject indicator ']']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{topic},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{topic},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{topic},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{topic},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{topic},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::comment
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"comment"};

    Parse::RecDescent::_trace(q{Trying rule: [comment]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{comment},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'/*'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['/*' /.+?/s '*/']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{comment});
        %item = (__RULE__ => q{comment});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['/*']},
                      Parse::RecDescent::_tracefirst($text),
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\/\*/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [/.+?/s]}, Parse::RecDescent::_tracefirst($text),
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/.+?/s})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:.+?)/s)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: ['*/']},
                      Parse::RecDescent::_tracefirst($text),
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{'*/'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\*\//)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['/*' /.+?/s '*/']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{comment},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{comment},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{comment},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{comment},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::occ_type
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"occ_type"};

    Parse::RecDescent::_trace(q{Trying rule: [occ_type]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{occ_type},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{name});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [name]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{occ_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{occ_type});
        %item = (__RULE__ => q{occ_type});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{occ_type},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::name($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{occ_type},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{occ_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [name]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{occ_type},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{occ_type},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{occ_type},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{occ_type},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{occ_type},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::basename
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"basename"};

    Parse::RecDescent::_trace(q{Trying rule: [basename]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{basename},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{string});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [string]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{basename},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{basename});
        %item = (__RULE__ => q{basename});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [string]},
                  Parse::RecDescent::_tracefirst($text),
                  q{basename},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::string($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [string]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{basename},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [string]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{basename},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{string}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{basename},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = new TM::Literal ($item[1], 'xsd:string'); };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [string]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{basename},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{basename},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{basename},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{basename},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{basename},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::name
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"name"};

    Parse::RecDescent::_trace(q{Trying rule: [name]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{name},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{/^\\w[:\\-\\w]*/, or /^\\w[-\\w]*/});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/^\\w[:\\-\\w]*/ <reject: ! $return>]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{name});
        %item = (__RULE__ => q{name});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/^\\w[:\\-\\w]*/]}, Parse::RecDescent::_tracefirst($text),
                      q{name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^\w[:\-\w]*)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
			  my $name = $item[1];
			  if ($name =~ /^(\w+):/) {
			      my $prefix = $1;
			      if ($prefixes{$prefix}) {
				  $name =~ s/^$prefix:/$prefixes{$prefix}/;
				  $return = $name;
			      } else {
				  $return = undef;
			      }
			  } else {
			      $return = $name;
			  }
		      };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        

        Parse::RecDescent::_trace(q{Trying directive: [<reject: ! $return>]},
                    Parse::RecDescent::_tracefirst($text),
                      q{name},
                      $tracelevel)
                        if defined $::RD_TRACE; 
        $_tok = do { ( ! $return) ? undef : 1 };
        if (defined($_tok))
        {
            Parse::RecDescent::_trace(q{>>Matched directive<< (return value: [}
                        . $_tok . q{])},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        else
        {
            Parse::RecDescent::_trace(q{<<Didn't match directive>>},
                        Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        }
        
        last unless defined $_tok;
        push @item, $item{__DIRECTIVE1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/^\\w[:\\-\\w]*/ <reject: ! $return>]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{name},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [/^\\w[-\\w]*/]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[1];
        $text = $_[1];
        my $_savetext;
        @item = (q{name});
        %item = (__RULE__ => q{name});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: [/^\\w[-\\w]*/]}, Parse::RecDescent::_tracefirst($text),
                      q{name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:^\w[-\w]*)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
			  $return = $item[1];
		      };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: [/^\\w[-\\w]*/]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{name},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{name},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{name},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{name},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{name},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::prefix_directive
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"prefix_directive"};

    Parse::RecDescent::_trace(q{Trying rule: [prefix_directive]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{prefix_directive},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'#PREFIX'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['#PREFIX' /\\w+/ '@' uri]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{prefix_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{prefix_directive});
        %item = (__RULE__ => q{prefix_directive});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['#PREFIX']},
                      Parse::RecDescent::_tracefirst($text),
                      q{prefix_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\#PREFIX/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [/\\w+/]}, Parse::RecDescent::_tracefirst($text),
                      q{prefix_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/\\w+/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:\w+)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: ['@']},
                      Parse::RecDescent::_tracefirst($text),
                      q{prefix_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{'@'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\@/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [uri]},
                  Parse::RecDescent::_tracefirst($text),
                  q{prefix_directive},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{uri})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::uri($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [uri]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{prefix_directive},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [uri]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{prefix_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{uri}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{prefix_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do {
			  my $uri = $item[4];
#			  $uri =~ s/^\"//; $uri =~ s/\"$//;
			  $prefixes{$item[2]} = $uri;
#warn "prefixes ".Dumper \%prefixes;
		      };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['#PREFIX' /\\w+/ '@' uri]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{prefix_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{prefix_directive},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{prefix_directive},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{prefix_directive},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{prefix_directive},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::occ_topic
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"occ_topic"};

    Parse::RecDescent::_trace(q{Trying rule: [occ_topic]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{occ_topic},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{name});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: [name]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{occ_topic},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{occ_topic});
        %item = (__RULE__ => q{occ_topic});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying subrule: [name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{occ_topic},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::name($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{occ_topic},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{occ_topic},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{>>Matched production: [name]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{occ_topic},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{occ_topic},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{occ_topic},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{occ_topic},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{occ_topic},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::string
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"string"};

    Parse::RecDescent::_trace(q{Trying rule: [string]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{string},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'"'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['"' /[^\\"]*/ '"']},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{string},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{string});
        %item = (__RULE__ => q{string});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['"']},
                      Parse::RecDescent::_tracefirst($text),
                      q{string},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\"/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: [/[^\\"]*/]}, Parse::RecDescent::_tracefirst($text),
                      q{string},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{/[^\\"]*/})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A(?:[^\"]*)/)
        {
            $text = $lastsep . $text if defined $lastsep;
            $expectation->failed();
            Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;

            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                    if defined $::RD_TRACE;
        push @item, $item{__PATTERN1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying terminal: ['"']},
                      Parse::RecDescent::_tracefirst($text),
                      q{string},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{'"'})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\"/)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING2__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{string},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item[2]; };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['"' /[^\\"]*/ '"']<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{string},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{string},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{string},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{string},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{string},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args, $_itempos)
sub Parse::RecDescent::TM::LTM::CParser::scope
{
	my $thisparser = $_[0];
	use vars q{$tracelevel};
	local $tracelevel = ($tracelevel||0)+1;
	$ERRORS = 0;
    my $thisrule = $thisparser->{"rules"}{"scope"};

    Parse::RecDescent::_trace(q{Trying rule: [scope]},
                  Parse::RecDescent::_tracefirst($_[1]),
                  q{scope},
                  $tracelevel)
                    if defined $::RD_TRACE;

    
    my $err_at = @{$thisparser->{errors}};

    my $score;
    my $score_return;
    my $_tok;
    my $return = undef;
    my $_matched=0;
    my $commit=0;
    my @item = ();
    my %item = ();
    my $repeating =  $_[2];
    my $_noactions = $_[3];
    my @arg =    defined $_[4] ? @{ &{$_[4]} } : ();
    my $_itempos = $_[5];
    my %arg =    ($#arg & 01) ? @arg : (@arg, undef);
    my $text;
    my $lastsep;
    my $current_match;
    my $expectation = new Parse::RecDescent::Expectation(q{'/'});
    $expectation->at($_[1]);
    
    my $thisline;
    tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

    

    while (!$_matched && !$commit)
    {
        
        Parse::RecDescent::_trace(q{Trying production: ['/' name]},
                      Parse::RecDescent::_tracefirst($_[1]),
                      q{scope},
                      $tracelevel)
                        if defined $::RD_TRACE;
        my $thisprod = $thisrule->{"prods"}[0];
        $text = $_[1];
        my $_savetext;
        @item = (q{scope});
        %item = (__RULE__ => q{scope});
        my $repcount = 0;


        Parse::RecDescent::_trace(q{Trying terminal: ['/']},
                      Parse::RecDescent::_tracefirst($text),
                      q{scope},
                      $tracelevel)
                        if defined $::RD_TRACE;
        undef $lastsep;
        $expectation->is(q{})->at($text);
        

        unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ m/\A\//)
        {
            $text = $lastsep . $text if defined $lastsep;
            
            $expectation->failed();
            Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
            last;
        }
        $current_match = substr($text, $-[0], $+[0] - $-[0]);
        substr($text,0,length($current_match),q{});
        Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
                        . $current_match . q{])},
                          Parse::RecDescent::_tracefirst($text))
                            if defined $::RD_TRACE;
        push @item, $item{__STRING1__}=$current_match;
        

        Parse::RecDescent::_trace(q{Trying subrule: [name]},
                  Parse::RecDescent::_tracefirst($text),
                  q{scope},
                  $tracelevel)
                    if defined $::RD_TRACE;
        if (1) { no strict qw{refs};
        $expectation->is(q{name})->at($text);
        unless (defined ($_tok = Parse::RecDescent::TM::LTM::CParser::name($thisparser,$text,$repeating,$_noactions,sub { \@arg },undef)))
        {
            
            Parse::RecDescent::_trace(q{<<Didn't match subrule: [name]>>},
                          Parse::RecDescent::_tracefirst($text),
                          q{scope},
                          $tracelevel)
                            if defined $::RD_TRACE;
            $expectation->failed();
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched subrule: [name]<< (return value: [}
                    . $_tok . q{]},

                      Parse::RecDescent::_tracefirst($text),
                      q{scope},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $item{q{name}} = $_tok;
        push @item, $_tok;
        
        }

        Parse::RecDescent::_trace(q{Trying action},
                      Parse::RecDescent::_tracefirst($text),
                      q{scope},
                      $tracelevel)
                        if defined $::RD_TRACE;
        

        $_tok = ($_noactions) ? 0 : do { $return = $item[2]; };
        unless (defined $_tok)
        {
            Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
                    if defined $::RD_TRACE;
            last;
        }
        Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
                      . $_tok . q{])},
                      Parse::RecDescent::_tracefirst($text))
                        if defined $::RD_TRACE;
        push @item, $_tok;
        $item{__ACTION1__}=$_tok;
        

        Parse::RecDescent::_trace(q{>>Matched production: ['/' name]<<},
                      Parse::RecDescent::_tracefirst($text),
                      q{scope},
                      $tracelevel)
                        if defined $::RD_TRACE;



        $_matched = 1;
        last;
    }


    unless ( $_matched || defined($score) )
    {
        

        $_[1] = $text;  # NOT SURE THIS IS NEEDED
        Parse::RecDescent::_trace(q{<<Didn't match rule>>},
                     Parse::RecDescent::_tracefirst($_[1]),
                     q{scope},
                     $tracelevel)
                    if defined $::RD_TRACE;
        return undef;
    }
    if (!defined($return) && defined($score))
    {
        Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
                      q{scope},
                      $tracelevel)
                        if defined $::RD_TRACE;
        $return = $score_return;
    }
    splice @{$thisparser->{errors}}, $err_at;
    $return = $item[$#item] unless defined $return;
    if (defined $::RD_TRACE)
    {
        Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
                      $return . q{])}, "",
                      q{scope},
                      $tracelevel);
        Parse::RecDescent::_trace(q{(consumed: [} .
                      Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])},
                      Parse::RecDescent::_tracefirst($text),
                      , q{scope},
                      $tracelevel)
    }
    $_[1] = $text;
    return $return;
}
}
package TM::LTM::CParser; sub new { my $self = bless( {
                 'rules' => {
                              'resource' => bless( {
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'lookahead' => 0,
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'subrule' => 'uri',
                                                                                                 'matchrule' => 0,
                                                                                                 'line' => 200
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => 200,
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'code' => '{ $return = new TM::Literal ($item[1], \'xsd:uri\') }',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1,
                                                                           'dircount' => 0,
                                                                           'patcount' => 0,
                                                                           'error' => undef,
                                                                           'strcount' => 0,
                                                                           'number' => 0,
                                                                           'line' => undef,
                                                                           'uncommit' => undef
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'strcount' => 0,
                                                                           'number' => 1,
                                                                           'uncommit' => undef,
                                                                           'line' => 201,
                                                                           'error' => undef,
                                                                           'patcount' => 0,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'lookahead' => 0,
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'subrule' => 'DATA',
                                                                                                 'matchrule' => 0,
                                                                                                 'line' => 202
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => 202,
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'code' => '{ $return = new TM::Literal ($item[1], \'xsd:string\') }',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1,
                                                                           'dircount' => 0
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'opcount' => 0,
                                                     'vars' => '',
                                                     'line' => 200,
                                                     'name' => 'resource',
                                                     'calls' => [
                                                                  'uri',
                                                                  'DATA'
                                                                ]
                                                   }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_assocrole' => bless( {
                                                                                             'impcount' => 0,
                                                                                             'changed' => 0,
                                                                                             'prods' => [
                                                                                                          bless( {
                                                                                                                   'patcount' => 0,
                                                                                                                   'items' => [
                                                                                                                                bless( {
                                                                                                                                         'lookahead' => 0,
                                                                                                                                         'argcode' => undef,
                                                                                                                                         'subrule' => 'topic',
                                                                                                                                         'implicit' => undef,
                                                                                                                                         'matchrule' => 0,
                                                                                                                                         'line' => 233
                                                                                                                                       }, 'Parse::RecDescent::Subrule' )
                                                                                                                              ],
                                                                                                                   'actcount' => 0,
                                                                                                                   'dircount' => 0,
                                                                                                                   'number' => 0,
                                                                                                                   'strcount' => 0,
                                                                                                                   'line' => undef,
                                                                                                                   'uncommit' => undef,
                                                                                                                   'error' => undef
                                                                                                                 }, 'Parse::RecDescent::Production' ),
                                                                                                          bless( {
                                                                                                                   'error' => undef,
                                                                                                                   'strcount' => 0,
                                                                                                                   'number' => 1,
                                                                                                                   'uncommit' => undef,
                                                                                                                   'line' => 233,
                                                                                                                   'dircount' => 0,
                                                                                                                   'items' => [
                                                                                                                                bless( {
                                                                                                                                         'lookahead' => 0,
                                                                                                                                         'argcode' => undef,
                                                                                                                                         'implicit' => undef,
                                                                                                                                         'subrule' => 'name',
                                                                                                                                         'matchrule' => 0,
                                                                                                                                         'line' => 233
                                                                                                                                       }, 'Parse::RecDescent::Subrule' )
                                                                                                                              ],
                                                                                                                   'actcount' => 0,
                                                                                                                   'patcount' => 0
                                                                                                                 }, 'Parse::RecDescent::Production' )
                                                                                                        ],
                                                                                             'vars' => '',
                                                                                             'opcount' => 0,
                                                                                             'line' => 233,
                                                                                             'calls' => [
                                                                                                          'topic',
                                                                                                          'name'
                                                                                                        ],
                                                                                             'name' => '_alternation_1_of_production_1_of_rule_assocrole'
                                                                                           }, 'Parse::RecDescent::Rule' ),
                              'role' => bless( {
                                                 'opcount' => 0,
                                                 'vars' => '',
                                                 'line' => 170,
                                                 'calls' => [
                                                              'name'
                                                            ],
                                                 'name' => 'role',
                                                 'impcount' => 0,
                                                 'changed' => 0,
                                                 'prods' => [
                                                              bless( {
                                                                       'strcount' => 1,
                                                                       'number' => 0,
                                                                       'uncommit' => undef,
                                                                       'line' => undef,
                                                                       'error' => undef,
                                                                       'patcount' => 0,
                                                                       'actcount' => 0,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'lookahead' => 0,
                                                                                             'line' => 170,
                                                                                             'pattern' => ':',
                                                                                             'hashname' => '__STRING1__',
                                                                                             'description' => '\':\''
                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                    bless( {
                                                                                             'matchrule' => 0,
                                                                                             'line' => 170,
                                                                                             'argcode' => undef,
                                                                                             'lookahead' => 0,
                                                                                             'implicit' => undef,
                                                                                             'subrule' => 'name'
                                                                                           }, 'Parse::RecDescent::Subrule' )
                                                                                  ],
                                                                       'dircount' => 0
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ]
                                               }, 'Parse::RecDescent::Rule' ),
                              'topicmapid_directive' => bless( {
                                                                 'name' => 'topicmapid_directive',
                                                                 'calls' => [
                                                                              '_alternation_1_of_production_1_of_rule_topicmapid_directive'
                                                                            ],
                                                                 'vars' => '',
                                                                 'opcount' => 0,
                                                                 'line' => 46,
                                                                 'prods' => [
                                                                              bless( {
                                                                                       'patcount' => 0,
                                                                                       'dircount' => 0,
                                                                                       'items' => [
                                                                                                    bless( {
                                                                                                             'line' => 46,
                                                                                                             'pattern' => '#TOPICMAP',
                                                                                                             'hashname' => '__STRING1__',
                                                                                                             'description' => '\'#TOPICMAP\'',
                                                                                                             'lookahead' => 0
                                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                                    bless( {
                                                                                                             'implicit' => 'name, or reify',
                                                                                                             'subrule' => '_alternation_1_of_production_1_of_rule_topicmapid_directive',
                                                                                                             'argcode' => undef,
                                                                                                             'lookahead' => 0,
                                                                                                             'line' => 46,
                                                                                                             'matchrule' => 0
                                                                                                           }, 'Parse::RecDescent::Subrule' ),
                                                                                                    bless( {
                                                                                                             'code' => '{
			  $log->logdie (__PACKAGE__ . ": TOPICMAP directive ignored (use proper means)");
		      }',
                                                                                                             'lookahead' => 0,
                                                                                                             'line' => 47,
                                                                                                             'hashname' => '__ACTION1__'
                                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                                  ],
                                                                                       'actcount' => 1,
                                                                                       'number' => 0,
                                                                                       'strcount' => 1,
                                                                                       'line' => undef,
                                                                                       'uncommit' => undef,
                                                                                       'error' => undef
                                                                                     }, 'Parse::RecDescent::Production' )
                                                                            ],
                                                                 'changed' => 0,
                                                                 'impcount' => 1
                                                               }, 'Parse::RecDescent::Rule' ),
                              'topic_map' => bless( {
                                                      'name' => 'topic_map',
                                                      'calls' => [
                                                                   'encoding',
                                                                   'directive',
                                                                   'component'
                                                                 ],
                                                      'opcount' => 0,
                                                      'vars' => '',
                                                      'line' => 18,
                                                      'prods' => [
                                                                   bless( {
                                                                            'number' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef,
                                                                            'line' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'max' => 1,
                                                                                                  'line' => 18,
                                                                                                  'expected' => undef,
                                                                                                  'subrule' => 'encoding',
                                                                                                  'min' => 0,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'repspec' => '?',
                                                                                                  'matchrule' => 0
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'max' => 100000000,
                                                                                                  'line' => 18,
                                                                                                  'expected' => undef,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'directive',
                                                                                                  'min' => 0,
                                                                                                  'lookahead' => 0,
                                                                                                  'repspec' => 's?',
                                                                                                  'argcode' => undef
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'expected' => undef,
                                                                                                  'max' => 100000000,
                                                                                                  'line' => 18,
                                                                                                  'matchrule' => 0,
                                                                                                  'argcode' => undef,
                                                                                                  'repspec' => 's',
                                                                                                  'lookahead' => 0,
                                                                                                  'subrule' => 'component',
                                                                                                  'min' => 1
                                                                                                }, 'Parse::RecDescent::Repetition' )
                                                                                       ],
                                                                            'actcount' => 0,
                                                                            'dircount' => 0
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0
                                                    }, 'Parse::RecDescent::Rule' ),
                              'reify' => bless( {
                                                  'changed' => 0,
                                                  'impcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'patcount' => 0,
                                                                        'dircount' => 0,
                                                                        'actcount' => 0,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'line' => 198,
                                                                                              'pattern' => '~',
                                                                                              'hashname' => '__STRING1__',
                                                                                              'description' => '\'~\'',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'subrule' => 'name',
                                                                                              'implicit' => undef,
                                                                                              'matchrule' => 0,
                                                                                              'line' => 198
                                                                                            }, 'Parse::RecDescent::Subrule' )
                                                                                   ],
                                                                        'number' => 0,
                                                                        'strcount' => 1,
                                                                        'uncommit' => undef,
                                                                        'line' => undef,
                                                                        'error' => undef
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'vars' => '',
                                                  'opcount' => 0,
                                                  'line' => 198,
                                                  'name' => 'reify',
                                                  'calls' => [
                                                               'name'
                                                             ]
                                                }, 'Parse::RecDescent::Rule' ),
                              'topname' => bless( {
                                                    'vars' => '',
                                                    'opcount' => 0,
                                                    'line' => 128,
                                                    'name' => 'topname',
                                                    'calls' => [
                                                                 'basesortdispname',
                                                                 'scope'
                                                               ],
                                                    'impcount' => 0,
                                                    'changed' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'line' => 130,
                                                                                                'pattern' => '=',
                                                                                                'description' => '\'=\'',
                                                                                                'hashname' => '__STRING1__',
                                                                                                'lookahead' => 0
                                                                                              }, 'Parse::RecDescent::Literal' ),
                                                                                       bless( {
                                                                                                'lookahead' => 0,
                                                                                                'argcode' => undef,
                                                                                                'implicit' => undef,
                                                                                                'subrule' => 'basesortdispname',
                                                                                                'matchrule' => 0,
                                                                                                'line' => 130
                                                                                              }, 'Parse::RecDescent::Subrule' ),
                                                                                       bless( {
                                                                                                'expected' => undef,
                                                                                                'max' => 1,
                                                                                                'line' => 130,
                                                                                                'matchrule' => 0,
                                                                                                'argcode' => undef,
                                                                                                'repspec' => '?',
                                                                                                'lookahead' => 0,
                                                                                                'subrule' => 'scope',
                                                                                                'min' => 0
                                                                                              }, 'Parse::RecDescent::Repetition' ),
                                                                                       bless( {
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'line' => 131,
                                                                                                'lookahead' => 0,
                                                                                                'code' => '{
#warn "basenames".Dumper \\@item;
			  $return = {
			      scope    => $item[3],
			      names    => $item[2],
			  };
		      }'
                                                                                              }, 'Parse::RecDescent::Action' )
                                                                                     ],
                                                                          'actcount' => 1,
                                                                          'dircount' => 0,
                                                                          'patcount' => 0,
                                                                          'error' => undef,
                                                                          'strcount' => 1,
                                                                          'number' => 0,
                                                                          'uncommit' => undef,
                                                                          'line' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ]
                                                  }, 'Parse::RecDescent::Rule' ),
                              'occur' => bless( {
                                                  'vars' => '',
                                                  'opcount' => 0,
                                                  'line' => 172,
                                                  'name' => 'occur',
                                                  'calls' => [
                                                               'occ_topic',
                                                               'occ_type',
                                                               'resource',
                                                               'scope',
                                                               'reify'
                                                             ],
                                                  'impcount' => 0,
                                                  'changed' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'patcount' => 0,
                                                                        'dircount' => 0,
                                                                        'actcount' => 1,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'lookahead' => 0,
                                                                                              'line' => 172,
                                                                                              'description' => '\'\\{\'',
                                                                                              'hashname' => '__STRING1__',
                                                                                              'pattern' => '{'
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'implicit' => undef,
                                                                                              'subrule' => 'occ_topic',
                                                                                              'matchrule' => 0,
                                                                                              'line' => 172
                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                     bless( {
                                                                                              'line' => 172,
                                                                                              'description' => '\',\'',
                                                                                              'hashname' => '__STRING2__',
                                                                                              'pattern' => ',',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'line' => 172,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'occ_type',
                                                                                              'implicit' => undef,
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                     bless( {
                                                                                              'lookahead' => 0,
                                                                                              'line' => 172,
                                                                                              'pattern' => ',',
                                                                                              'description' => '\',\'',
                                                                                              'hashname' => '__STRING3__'
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'matchrule' => 0,
                                                                                              'line' => 172,
                                                                                              'lookahead' => 0,
                                                                                              'argcode' => undef,
                                                                                              'implicit' => undef,
                                                                                              'subrule' => 'resource'
                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                     bless( {
                                                                                              'line' => 172,
                                                                                              'description' => '\'\\}\'',
                                                                                              'hashname' => '__STRING4__',
                                                                                              'pattern' => '}',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'repspec' => '?',
                                                                                              'lookahead' => 0,
                                                                                              'subrule' => 'scope',
                                                                                              'min' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'expected' => undef,
                                                                                              'max' => 1,
                                                                                              'line' => 172
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'subrule' => 'reify',
                                                                                              'min' => 0,
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'repspec' => '?',
                                                                                              'matchrule' => 0,
                                                                                              'max' => 1,
                                                                                              'line' => 172,
                                                                                              'expected' => undef
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'code' => '{
			  my $id = $store->internalize ($item[2]);
			  my ($a) = $store->assert ([ undef,                                         # LID
						      $item[8]->[0],                                 # SCOPE
						      $item[4],                                      # TYPE (MUST BE DEFINED!)
						      TM->OCC,                                       # KIND
						      [ \'thing\', \'value\' ],                          # ROLES
						      [ $id,     $item[6] ],                         # PLAYERS
						      undef ]);

			 { # memorize basename types and scopes as implicitely defined
			     $implicits->{\'isa-scope\'}-> { $item[8]->[0] }++ if $item[8]->[0];       # get the bloody scopes and tuck them away
			     $implicits->{\'subclasses\'}->{ \'occurrence\' }->{ $item[4] }++;
			 }

#warn "reify ".Dumper $item[9];
			  $store->internalize ($item[9]->[0], $a->[TM->LID]) if $item[9]->[0];

			  $return = $a;
		      }',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 173,
                                                                                              'hashname' => '__ACTION1__'
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'uncommit' => undef,
                                                                        'number' => 0,
                                                                        'strcount' => 4,
                                                                        'line' => undef,
                                                                        'error' => undef
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ]
                                                }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_topicmapid_directive' => bless( {
                                                                                                        'name' => '_alternation_1_of_production_1_of_rule_topicmapid_directive',
                                                                                                        'calls' => [
                                                                                                                     'name',
                                                                                                                     'reify'
                                                                                                                   ],
                                                                                                        'vars' => '',
                                                                                                        'opcount' => 0,
                                                                                                        'line' => 233,
                                                                                                        'prods' => [
                                                                                                                     bless( {
                                                                                                                              'patcount' => 0,
                                                                                                                              'dircount' => 0,
                                                                                                                              'items' => [
                                                                                                                                           bless( {
                                                                                                                                                    'argcode' => undef,
                                                                                                                                                    'lookahead' => 0,
                                                                                                                                                    'implicit' => undef,
                                                                                                                                                    'subrule' => 'name',
                                                                                                                                                    'matchrule' => 0,
                                                                                                                                                    'line' => 233
                                                                                                                                                  }, 'Parse::RecDescent::Subrule' )
                                                                                                                                         ],
                                                                                                                              'actcount' => 0,
                                                                                                                              'number' => 0,
                                                                                                                              'uncommit' => undef,
                                                                                                                              'strcount' => 0,
                                                                                                                              'line' => undef,
                                                                                                                              'error' => undef
                                                                                                                            }, 'Parse::RecDescent::Production' ),
                                                                                                                     bless( {
                                                                                                                              'patcount' => 0,
                                                                                                                              'dircount' => 0,
                                                                                                                              'items' => [
                                                                                                                                           bless( {
                                                                                                                                                    'matchrule' => 0,
                                                                                                                                                    'line' => 233,
                                                                                                                                                    'argcode' => undef,
                                                                                                                                                    'lookahead' => 0,
                                                                                                                                                    'implicit' => undef,
                                                                                                                                                    'subrule' => 'reify'
                                                                                                                                                  }, 'Parse::RecDescent::Subrule' )
                                                                                                                                         ],
                                                                                                                              'actcount' => 0,
                                                                                                                              'uncommit' => undef,
                                                                                                                              'number' => 1,
                                                                                                                              'strcount' => 0,
                                                                                                                              'line' => 233,
                                                                                                                              'error' => undef
                                                                                                                            }, 'Parse::RecDescent::Production' )
                                                                                                                   ],
                                                                                                        'changed' => 0,
                                                                                                        'impcount' => 0
                                                                                                      }, 'Parse::RecDescent::Rule' ),
                              'DATA' => bless( {
                                                 'calls' => [],
                                                 'name' => 'DATA',
                                                 'vars' => '',
                                                 'opcount' => 0,
                                                 'line' => 204,
                                                 'prods' => [
                                                              bless( {
                                                                       'actcount' => 1,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'lookahead' => 0,
                                                                                             'description' => '\'[[\'',
                                                                                             'hashname' => '__STRING1__',
                                                                                             'pattern' => '[[',
                                                                                             'line' => 204
                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                    bless( {
                                                                                             'ldelim' => '/',
                                                                                             'lookahead' => 0,
                                                                                             'pattern' => '.*(?=\\]\\])',
                                                                                             'mod' => 'sx',
                                                                                             'line' => 204,
                                                                                             'hashname' => '__PATTERN1__',
                                                                                             'description' => '/.*(?=\\\\]\\\\])/sx',
                                                                                             'rdelim' => '/'
                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                    bless( {
                                                                                             'line' => 204,
                                                                                             'description' => '\']]\'',
                                                                                             'hashname' => '__STRING2__',
                                                                                             'pattern' => ']]',
                                                                                             'lookahead' => 0
                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                    bless( {
                                                                                             'lookahead' => 0,
                                                                                             'code' => '{ $return = $item[2]; }',
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'line' => 204
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'dircount' => 0,
                                                                       'patcount' => 1,
                                                                       'error' => undef,
                                                                       'line' => undef,
                                                                       'number' => 0,
                                                                       'strcount' => 2,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'impcount' => 0,
                                                 'changed' => 0
                                               }, 'Parse::RecDescent::Rule' ),
                              'indicator' => bless( {
                                                      'calls' => [
                                                                   'uri'
                                                                 ],
                                                      'name' => 'indicator',
                                                      'vars' => '',
                                                      'opcount' => 0,
                                                      'line' => 126,
                                                      'prods' => [
                                                                   bless( {
                                                                            'dircount' => 0,
                                                                            'actcount' => 1,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'lookahead' => 0,
                                                                                                  'description' => '\'@\'',
                                                                                                  'hashname' => '__STRING1__',
                                                                                                  'pattern' => '@',
                                                                                                  'line' => 128
                                                                                                }, 'Parse::RecDescent::Literal' ),
                                                                                         bless( {
                                                                                                  'implicit' => undef,
                                                                                                  'subrule' => 'uri',
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 128,
                                                                                                  'matchrule' => 0
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'code' => '{ $return = \\ $item[2]; }',
                                                                                                  'lookahead' => 0,
                                                                                                  'line' => 128,
                                                                                                  'hashname' => '__ACTION1__'
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'patcount' => 0,
                                                                            'error' => undef,
                                                                            'strcount' => 1,
                                                                            'number' => 0,
                                                                            'uncommit' => undef,
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'impcount' => 0,
                                                      'changed' => 0
                                                    }, 'Parse::RecDescent::Rule' ),
                              'mergemap_directive' => bless( {
                                                               'name' => 'mergemap_directive',
                                                               'calls' => [
                                                                            'uri',
                                                                            'tm_format'
                                                                          ],
                                                               'vars' => '',
                                                               'opcount' => 0,
                                                               'line' => 51,
                                                               'prods' => [
                                                                            bless( {
                                                                                     'patcount' => 0,
                                                                                     'items' => [
                                                                                                  bless( {
                                                                                                           'lookahead' => 0,
                                                                                                           'line' => 51,
                                                                                                           'pattern' => '#MERGEMAP',
                                                                                                           'description' => '\'#MERGEMAP\'',
                                                                                                           'hashname' => '__STRING1__'
                                                                                                         }, 'Parse::RecDescent::Literal' ),
                                                                                                  bless( {
                                                                                                           'implicit' => undef,
                                                                                                           'subrule' => 'uri',
                                                                                                           'argcode' => undef,
                                                                                                           'lookahead' => 0,
                                                                                                           'line' => 51,
                                                                                                           'matchrule' => 0
                                                                                                         }, 'Parse::RecDescent::Subrule' ),
                                                                                                  bless( {
                                                                                                           'expected' => undef,
                                                                                                           'max' => 1,
                                                                                                           'line' => 51,
                                                                                                           'matchrule' => 0,
                                                                                                           'argcode' => undef,
                                                                                                           'lookahead' => 0,
                                                                                                           'repspec' => '?',
                                                                                                           'min' => 0,
                                                                                                           'subrule' => 'tm_format'
                                                                                                         }, 'Parse::RecDescent::Repetition' ),
                                                                                                  bless( {
                                                                                                           'code' => '{
			  my $uri = $item[2];
#warn "uri is $uri";
			  my $format = $item[3]->[0] ? $item[3]->[0] : \'ltm\';
			  my $tm;
			  if ($format =~ /^ltm$/i) {
			      $tm = new TM::Materialized::LTM (url => $uri);
			  } elsif ($format =~ /^xtm$/i) {
			      $tm = new TM::Materialized::XTM (url => $uri);
			  } elsif ($format =~ /^astma$/i) {
			      $tm = new TM::Materialized::AsTMa (url => $uri);
			  } else {
			      $log->logdie (__PACKAGE__ . ": unsupported TM format \'$format\'");
			  }
			  $tm->sync_in;
			  $store->add ($tm);
#warn "after merged in".Dumper $store;
			  $return = $uri;
		      }',
                                                                                                           'lookahead' => 0,
                                                                                                           'line' => 52,
                                                                                                           'hashname' => '__ACTION1__'
                                                                                                         }, 'Parse::RecDescent::Action' )
                                                                                                ],
                                                                                     'actcount' => 1,
                                                                                     'dircount' => 0,
                                                                                     'number' => 0,
                                                                                     'strcount' => 1,
                                                                                     'uncommit' => undef,
                                                                                     'line' => undef,
                                                                                     'error' => undef
                                                                                   }, 'Parse::RecDescent::Production' )
                                                                          ],
                                                               'changed' => 0,
                                                               'impcount' => 0
                                                             }, 'Parse::RecDescent::Rule' ),
                              'baseuri_directive' => bless( {
                                                              'vars' => '',
                                                              'opcount' => 0,
                                                              'line' => 74,
                                                              'calls' => [
                                                                           'uri'
                                                                         ],
                                                              'name' => 'baseuri_directive',
                                                              'changed' => 0,
                                                              'impcount' => 0,
                                                              'prods' => [
                                                                           bless( {
                                                                                    'dircount' => 0,
                                                                                    'actcount' => 0,
                                                                                    'items' => [
                                                                                                 bless( {
                                                                                                          'lookahead' => 0,
                                                                                                          'line' => 74,
                                                                                                          'pattern' => '#BASEURI',
                                                                                                          'hashname' => '__STRING1__',
                                                                                                          'description' => '\'#BASEURI\''
                                                                                                        }, 'Parse::RecDescent::Literal' ),
                                                                                                 bless( {
                                                                                                          'matchrule' => 0,
                                                                                                          'line' => 74,
                                                                                                          'argcode' => undef,
                                                                                                          'lookahead' => 0,
                                                                                                          'subrule' => 'uri',
                                                                                                          'implicit' => undef
                                                                                                        }, 'Parse::RecDescent::Subrule' )
                                                                                               ],
                                                                                    'patcount' => 0,
                                                                                    'error' => undef,
                                                                                    'number' => 0,
                                                                                    'line' => undef,
                                                                                    'strcount' => 1,
                                                                                    'uncommit' => undef
                                                                                  }, 'Parse::RecDescent::Production' )
                                                                         ]
                                                            }, 'Parse::RecDescent::Rule' ),
                              'assoc' => bless( {
                                                  'prods' => [
                                                               bless( {
                                                                        'error' => undef,
                                                                        'strcount' => 2,
                                                                        'number' => 0,
                                                                        'uncommit' => undef,
                                                                        'line' => undef,
                                                                        'dircount' => 0,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'matchrule' => 0,
                                                                                              'line' => 145,
                                                                                              'lookahead' => 0,
                                                                                              'argcode' => undef,
                                                                                              'implicit' => undef,
                                                                                              'subrule' => 'name'
                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                     bless( {
                                                                                              'line' => 145,
                                                                                              'pattern' => '(',
                                                                                              'hashname' => '__STRING1__',
                                                                                              'description' => '\'(\'',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'line' => 145,
                                                                                              'matchrule' => 0,
                                                                                              'implicit' => undef,
                                                                                              'subrule' => 'assocroles',
                                                                                              'lookahead' => 0,
                                                                                              'argcode' => undef
                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                     bless( {
                                                                                              'line' => 145,
                                                                                              'hashname' => '__STRING2__',
                                                                                              'description' => '\')\'',
                                                                                              'pattern' => ')',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'scope',
                                                                                              'min' => 0,
                                                                                              'repspec' => '?',
                                                                                              'lookahead' => 0,
                                                                                              'argcode' => undef,
                                                                                              'max' => 1,
                                                                                              'line' => 145,
                                                                                              'expected' => undef
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'argcode' => undef,
                                                                                              'repspec' => '?',
                                                                                              'lookahead' => 0,
                                                                                              'subrule' => 'reify',
                                                                                              'min' => 0,
                                                                                              'matchrule' => 0,
                                                                                              'expected' => undef,
                                                                                              'line' => 145,
                                                                                              'max' => 1
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'lookahead' => 0,
                                                                                              'code' => '{
#warn "assoc item " . Dumper \\@item;
			  { # memorize that association type subclasses association
			      $implicits->{\'isa-scope\'}->{ $item[5]->[0] }++ if $item[5]->[0];
			  }
			  my ($a) = $store->assert ([ undef,                                            # LID
							 $item[5] && $item[5]->[0],                     # SCOPE
							 $item[1],                                      # TYPE
							 TM->ASSOC,                                     # KIND
							 [ map { $_->[1] } @{$item[3]} ],               # ROLES
							 [ map { $_->[0] } @{$item[3]} ],               # PLAYERS
							 undef ]);
#warn "reify ".Dumper $item[6];
			  $store->internalize ($item[6]->[0], $a->[TM->LID]) if $item[6]->[0];
			  $return = $a;
		      }',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'line' => 146
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'actcount' => 1,
                                                                        'patcount' => 0
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'impcount' => 0,
                                                  'changed' => 0,
                                                  'calls' => [
                                                               'name',
                                                               'assocroles',
                                                               'scope',
                                                               'reify'
                                                             ],
                                                  'name' => 'assoc',
                                                  'opcount' => 0,
                                                  'vars' => '',
                                                  'line' => 145
                                                }, 'Parse::RecDescent::Rule' ),
                              'tm_format' => bless( {
                                                      'prods' => [
                                                                   bless( {
                                                                            'dircount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'line' => 72,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'string',
                                                                                                  'implicit' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'argcode' => undef
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'patcount' => 0,
                                                                            'error' => undef,
                                                                            'line' => undef,
                                                                            'number' => 0,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'calls' => [
                                                                   'string'
                                                                 ],
                                                      'name' => 'tm_format',
                                                      'vars' => '',
                                                      'opcount' => 0,
                                                      'line' => 72
                                                    }, 'Parse::RecDescent::Rule' ),
                              'assocrole' => bless( {
                                                      'prods' => [
                                                                   bless( {
                                                                            'patcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'matchrule' => 0,
                                                                                                  'line' => 165,
                                                                                                  'lookahead' => 0,
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => 'topic, or name',
                                                                                                  'subrule' => '_alternation_1_of_production_1_of_rule_assocrole'
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'max' => 1,
                                                                                                  'line' => 165,
                                                                                                  'expected' => undef,
                                                                                                  'matchrule' => 0,
                                                                                                  'min' => 0,
                                                                                                  'subrule' => 'role',
                                                                                                  'argcode' => undef,
                                                                                                  'repspec' => '?',
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Repetition' ),
                                                                                         bless( {
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'line' => 166,
                                                                                                  'lookahead' => 0,
                                                                                                  'code' => '{
                          $return = [ $item[1], $item[2]->[0] || \'thing\' ];
		      }'
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'actcount' => 1,
                                                                            'dircount' => 0,
                                                                            'number' => 0,
                                                                            'uncommit' => undef,
                                                                            'strcount' => 0,
                                                                            'line' => undef,
                                                                            'error' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 1,
                                                      'name' => 'assocrole',
                                                      'calls' => [
                                                                   '_alternation_1_of_production_1_of_rule_assocrole',
                                                                   'role'
                                                                 ],
                                                      'opcount' => 0,
                                                      'vars' => '',
                                                      'line' => 165
                                                    }, 'Parse::RecDescent::Rule' ),
                              'uri' => bless( {
                                                'prods' => [
                                                             bless( {
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'matchrule' => 0,
                                                                                            'line' => 206,
                                                                                            'argcode' => undef,
                                                                                            'lookahead' => 0,
                                                                                            'implicit' => undef,
                                                                                            'subrule' => 'string'
                                                                                          }, 'Parse::RecDescent::Subrule' )
                                                                                 ],
                                                                      'actcount' => 0,
                                                                      'dircount' => 0,
                                                                      'patcount' => 0,
                                                                      'error' => undef,
                                                                      'number' => 0,
                                                                      'uncommit' => undef,
                                                                      'strcount' => 0,
                                                                      'line' => undef
                                                                    }, 'Parse::RecDescent::Production' )
                                                           ],
                                                'changed' => 0,
                                                'impcount' => 0,
                                                'calls' => [
                                                             'string'
                                                           ],
                                                'name' => 'uri',
                                                'line' => 206,
                                                'vars' => '',
                                                'opcount' => 0
                                              }, 'Parse::RecDescent::Rule' ),
                              'startrule' => bless( {
                                                      'prods' => [
                                                                   bless( {
                                                                            'strcount' => 0,
                                                                            'number' => 0,
                                                                            'uncommit' => undef,
                                                                            'line' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'line' => 15,
                                                                                                  'lookahead' => 0,
                                                                                                  'code' => '{ $store = $arg[0]; $log = $arg[1]; $implicits = $arg[2] }'
                                                                                                }, 'Parse::RecDescent::Action' ),
                                                                                         bless( {
                                                                                                  'matchrule' => 0,
                                                                                                  'line' => 15,
                                                                                                  'lookahead' => 0,
                                                                                                  'argcode' => undef,
                                                                                                  'subrule' => 'topic_map',
                                                                                                  'implicit' => undef
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'actcount' => 1,
                                                                            'dircount' => 0
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'calls' => [
                                                                   'topic_map'
                                                                 ],
                                                      'name' => 'startrule',
                                                      'vars' => '',
                                                      'line' => 13,
                                                      'opcount' => 0
                                                    }, 'Parse::RecDescent::Rule' ),
                              'types' => bless( {
                                                  'name' => 'types',
                                                  'calls' => [
                                                               'name'
                                                             ],
                                                  'line' => 124,
                                                  'vars' => '',
                                                  'opcount' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'number' => 0,
                                                                        'strcount' => 1,
                                                                        'uncommit' => undef,
                                                                        'line' => undef,
                                                                        'error' => undef,
                                                                        'patcount' => 0,
                                                                        'dircount' => 0,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'lookahead' => 0,
                                                                                              'hashname' => '__STRING1__',
                                                                                              'description' => '\':\'',
                                                                                              'pattern' => ':',
                                                                                              'line' => 124
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'line' => 124,
                                                                                              'max' => 100000000,
                                                                                              'expected' => undef,
                                                                                              'matchrule' => 0,
                                                                                              'min' => 1,
                                                                                              'subrule' => 'name',
                                                                                              'lookahead' => 0,
                                                                                              'repspec' => 's',
                                                                                              'argcode' => undef
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'code' => '{ $return = $item[2]; }',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 124,
                                                                                              'hashname' => '__ACTION1__'
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'actcount' => 1
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'impcount' => 0,
                                                  'changed' => 0
                                                }, 'Parse::RecDescent::Rule' ),
                              'assocroles' => bless( {
                                                       'name' => 'assocroles',
                                                       'calls' => [
                                                                    'assocrole'
                                                                  ],
                                                       'vars' => '',
                                                       'opcount' => 0,
                                                       'line' => 163,
                                                       'prods' => [
                                                                    bless( {
                                                                             'patcount' => 1,
                                                                             'dircount' => 1,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'type' => 'leftop',
                                                                                                   'leftarg' => bless( {
                                                                                                                         'matchrule' => 0,
                                                                                                                         'line' => 163,
                                                                                                                         'argcode' => undef,
                                                                                                                         'lookahead' => 0,
                                                                                                                         'subrule' => 'assocrole',
                                                                                                                         'implicit' => undef
                                                                                                                       }, 'Parse::RecDescent::Subrule' ),
                                                                                                   'name' => '\'assocrole(s)\'',
                                                                                                   'op' => bless( {
                                                                                                                    'mod' => '',
                                                                                                                    'hashname' => '__PATTERN1__',
                                                                                                                    'rdelim' => '/',
                                                                                                                    'description' => '/,/',
                                                                                                                    'line' => 163,
                                                                                                                    'lookahead' => 0,
                                                                                                                    'ldelim' => '/',
                                                                                                                    'pattern' => ','
                                                                                                                  }, 'Parse::RecDescent::Token' ),
                                                                                                   'hashname' => '__DIRECTIVE1__',
                                                                                                   'expected' => '<leftop: assocrole /,/ assocrole>',
                                                                                                   'rightarg' => bless( {
                                                                                                                          'line' => 163,
                                                                                                                          'matchrule' => 0,
                                                                                                                          'implicit' => undef,
                                                                                                                          'subrule' => 'assocrole',
                                                                                                                          'argcode' => undef,
                                                                                                                          'lookahead' => 0
                                                                                                                        }, 'Parse::RecDescent::Subrule' ),
                                                                                                   'max' => 100000000,
                                                                                                   'min' => 1
                                                                                                 }, 'Parse::RecDescent::Operator' )
                                                                                        ],
                                                                             'actcount' => 0,
                                                                             'number' => 0,
                                                                             'strcount' => 0,
                                                                             'uncommit' => undef,
                                                                             'line' => undef,
                                                                             'op' => [],
                                                                             'error' => undef
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'changed' => 0,
                                                       'impcount' => 0
                                                     }, 'Parse::RecDescent::Rule' ),
                              'basesortdispname' => bless( {
                                                             'vars' => '',
                                                             'opcount' => 0,
                                                             'line' => 139,
                                                             'calls' => [
                                                                          'basename'
                                                                        ],
                                                             'name' => 'basesortdispname',
                                                             'changed' => 0,
                                                             'impcount' => 0,
                                                             'prods' => [
                                                                          bless( {
                                                                                   'error' => undef,
                                                                                   'op' => [],
                                                                                   'number' => 0,
                                                                                   'line' => undef,
                                                                                   'strcount' => 1,
                                                                                   'uncommit' => undef,
                                                                                   'dircount' => 1,
                                                                                   'actcount' => 0,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'min' => 1,
                                                                                                         'max' => 100000000,
                                                                                                         'rightarg' => bless( {
                                                                                                                                'implicit' => undef,
                                                                                                                                'subrule' => 'basename',
                                                                                                                                'lookahead' => 0,
                                                                                                                                'argcode' => undef,
                                                                                                                                'line' => 139,
                                                                                                                                'matchrule' => 0
                                                                                                                              }, 'Parse::RecDescent::Subrule' ),
                                                                                                         'expected' => '<leftop: basename \';\' basename>',
                                                                                                         'hashname' => '__DIRECTIVE1__',
                                                                                                         'op' => bless( {
                                                                                                                          'hashname' => '__STRING1__',
                                                                                                                          'description' => '\';\'',
                                                                                                                          'pattern' => ';',
                                                                                                                          'line' => 139,
                                                                                                                          'lookahead' => 0
                                                                                                                        }, 'Parse::RecDescent::Literal' ),
                                                                                                         'leftarg' => bless( {
                                                                                                                               'lookahead' => 0,
                                                                                                                               'argcode' => undef,
                                                                                                                               'subrule' => 'basename',
                                                                                                                               'implicit' => undef,
                                                                                                                               'matchrule' => 0,
                                                                                                                               'line' => 139
                                                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                                         'name' => '',
                                                                                                         'type' => 'leftop'
                                                                                                       }, 'Parse::RecDescent::Operator' )
                                                                                              ],
                                                                                   'patcount' => 0
                                                                                 }, 'Parse::RecDescent::Production' )
                                                                        ]
                                                           }, 'Parse::RecDescent::Rule' ),
                              'directive' => bless( {
                                                      'calls' => [
                                                                   'version_directive',
                                                                   'topicmapid_directive',
                                                                   'mergemap_directive',
                                                                   'prefix_directive',
                                                                   'baseuri_directive'
                                                                 ],
                                                      'name' => 'directive',
                                                      'opcount' => 0,
                                                      'vars' => '',
                                                      'line' => 23,
                                                      'prods' => [
                                                                   bless( {
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'subrule' => 'version_directive',
                                                                                                  'implicit' => undef,
                                                                                                  'matchrule' => 0,
                                                                                                  'line' => 25
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'patcount' => 0,
                                                                            'error' => undef,
                                                                            'uncommit' => undef,
                                                                            'number' => 0,
                                                                            'strcount' => 0,
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'error' => undef,
                                                                            'line' => 25,
                                                                            'number' => 1,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'line' => 26,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'topicmapid_directive',
                                                                                                  'implicit' => undef,
                                                                                                  'lookahead' => 0,
                                                                                                  'argcode' => undef
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'patcount' => 0
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'implicit' => undef,
                                                                                                  'subrule' => 'mergemap_directive',
                                                                                                  'lookahead' => 0,
                                                                                                  'argcode' => undef,
                                                                                                  'line' => 27,
                                                                                                  'matchrule' => 0
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'dircount' => 0,
                                                                            'patcount' => 0,
                                                                            'error' => undef,
                                                                            'uncommit' => undef,
                                                                            'number' => 2,
                                                                            'strcount' => 0,
                                                                            'line' => 26
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'line' => 28,
                                                                                                  'matchrule' => 0,
                                                                                                  'subrule' => 'prefix_directive',
                                                                                                  'implicit' => undef,
                                                                                                  'argcode' => undef,
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'patcount' => 0,
                                                                            'error' => undef,
                                                                            'strcount' => 0,
                                                                            'number' => 3,
                                                                            'line' => 27,
                                                                            'uncommit' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'patcount' => 0,
                                                                            'dircount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'implicit' => undef,
                                                                                                  'subrule' => 'baseuri_directive',
                                                                                                  'lookahead' => 0,
                                                                                                  'argcode' => undef,
                                                                                                  'line' => 29,
                                                                                                  'matchrule' => 0
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'actcount' => 0,
                                                                            'number' => 4,
                                                                            'uncommit' => undef,
                                                                            'strcount' => 0,
                                                                            'line' => 28,
                                                                            'error' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0
                                                    }, 'Parse::RecDescent::Rule' ),
                              'subject' => bless( {
                                                    'calls' => [
                                                                 'uri'
                                                               ],
                                                    'name' => 'subject',
                                                    'vars' => '',
                                                    'opcount' => 0,
                                                    'line' => 126,
                                                    'prods' => [
                                                                 bless( {
                                                                          'patcount' => 0,
                                                                          'actcount' => 1,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'line' => 126,
                                                                                                'pattern' => '%',
                                                                                                'description' => '\'%\'',
                                                                                                'hashname' => '__STRING1__',
                                                                                                'lookahead' => 0
                                                                                              }, 'Parse::RecDescent::Literal' ),
                                                                                       bless( {
                                                                                                'implicit' => undef,
                                                                                                'subrule' => 'uri',
                                                                                                'lookahead' => 0,
                                                                                                'argcode' => undef,
                                                                                                'line' => 126,
                                                                                                'matchrule' => 0
                                                                                              }, 'Parse::RecDescent::Subrule' ),
                                                                                       bless( {
                                                                                                'code' => '{ $return = $item[2]; }',
                                                                                                'lookahead' => 0,
                                                                                                'line' => 126,
                                                                                                'hashname' => '__ACTION1__'
                                                                                              }, 'Parse::RecDescent::Action' )
                                                                                     ],
                                                                          'dircount' => 0,
                                                                          'number' => 0,
                                                                          'line' => undef,
                                                                          'strcount' => 1,
                                                                          'uncommit' => undef,
                                                                          'error' => undef
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'impcount' => 0,
                                                    'changed' => 0
                                                  }, 'Parse::RecDescent::Rule' ),
                              'encoding' => bless( {
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'patcount' => 0,
                                                                           'dircount' => 0,
                                                                           'actcount' => 0,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'lookahead' => 0,
                                                                                                 'line' => 22,
                                                                                                 'pattern' => '@',
                                                                                                 'description' => '\'@\'',
                                                                                                 'hashname' => '__STRING1__'
                                                                                               }, 'Parse::RecDescent::Literal' ),
                                                                                        bless( {
                                                                                                 'matchrule' => 0,
                                                                                                 'line' => 22,
                                                                                                 'lookahead' => 0,
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'subrule' => 'string'
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'number' => 0,
                                                                           'uncommit' => undef,
                                                                           'strcount' => 1,
                                                                           'line' => undef,
                                                                           'error' => undef
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'opcount' => 0,
                                                     'vars' => '',
                                                     'line' => 22,
                                                     'calls' => [
                                                                  'string'
                                                                ],
                                                     'name' => 'encoding'
                                                   }, 'Parse::RecDescent::Rule' ),
                              'version_directive' => bless( {
                                                              'changed' => 0,
                                                              'impcount' => 0,
                                                              'prods' => [
                                                                           bless( {
                                                                                    'dircount' => 0,
                                                                                    'actcount' => 1,
                                                                                    'items' => [
                                                                                                 bless( {
                                                                                                          'pattern' => '#VERSION',
                                                                                                          'description' => '\'#VERSION\'',
                                                                                                          'hashname' => '__STRING1__',
                                                                                                          'line' => 40,
                                                                                                          'lookahead' => 0
                                                                                                        }, 'Parse::RecDescent::Literal' ),
                                                                                                 bless( {
                                                                                                          'argcode' => undef,
                                                                                                          'lookahead' => 0,
                                                                                                          'implicit' => undef,
                                                                                                          'subrule' => 'string',
                                                                                                          'matchrule' => 0,
                                                                                                          'line' => 40
                                                                                                        }, 'Parse::RecDescent::Subrule' ),
                                                                                                 bless( {
                                                                                                          'lookahead' => 0,
                                                                                                          'code' => '{
			  my $version = $item[2];
			  $log->logdie (__PACKAGE__ . ": VERSION not supported \'$version\'") unless $version =~ /^1\\.[23]$/;
		      }',
                                                                                                          'hashname' => '__ACTION1__',
                                                                                                          'line' => 41
                                                                                                        }, 'Parse::RecDescent::Action' )
                                                                                               ],
                                                                                    'patcount' => 0,
                                                                                    'error' => undef,
                                                                                    'uncommit' => undef,
                                                                                    'number' => 0,
                                                                                    'strcount' => 1,
                                                                                    'line' => undef
                                                                                  }, 'Parse::RecDescent::Production' )
                                                                         ],
                                                              'opcount' => 0,
                                                              'vars' => '',
                                                              'line' => 40,
                                                              'calls' => [
                                                                           'string'
                                                                         ],
                                                              'name' => 'version_directive'
                                                            }, 'Parse::RecDescent::Rule' ),
                              'component' => bless( {
                                                      'vars' => '',
                                                      'opcount' => 0,
                                                      'line' => 20,
                                                      'name' => 'component',
                                                      'calls' => [
                                                                   'topic',
                                                                   'assoc',
                                                                   'occur'
                                                                 ],
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'implicit' => undef,
                                                                                                  'subrule' => 'topic',
                                                                                                  'lookahead' => 0,
                                                                                                  'argcode' => undef,
                                                                                                  'line' => 20,
                                                                                                  'matchrule' => 0
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'actcount' => 0,
                                                                            'dircount' => 0,
                                                                            'patcount' => 0,
                                                                            'error' => undef,
                                                                            'uncommit' => undef,
                                                                            'number' => 0,
                                                                            'strcount' => 0,
                                                                            'line' => undef
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'number' => 1,
                                                                            'line' => 20,
                                                                            'strcount' => 0,
                                                                            'uncommit' => undef,
                                                                            'error' => undef,
                                                                            'patcount' => 0,
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'matchrule' => 0,
                                                                                                  'line' => 20,
                                                                                                  'lookahead' => 0,
                                                                                                  'argcode' => undef,
                                                                                                  'subrule' => 'assoc',
                                                                                                  'implicit' => undef
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'dircount' => 0
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'actcount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'implicit' => undef,
                                                                                                  'subrule' => 'occur',
                                                                                                  'lookahead' => 0,
                                                                                                  'argcode' => undef,
                                                                                                  'line' => 20,
                                                                                                  'matchrule' => 0
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'dircount' => 0,
                                                                            'patcount' => 0,
                                                                            'error' => undef,
                                                                            'number' => 2,
                                                                            'uncommit' => undef,
                                                                            'strcount' => 0,
                                                                            'line' => 20
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ]
                                                    }, 'Parse::RecDescent::Rule' ),
                              'topic' => bless( {
                                                  'vars' => '',
                                                  'opcount' => 0,
                                                  'line' => 76,
                                                  'name' => 'topic',
                                                  'calls' => [
                                                               'name',
                                                               'types',
                                                               'topname',
                                                               'reify',
                                                               'subject',
                                                               'indicator'
                                                             ],
                                                  'impcount' => 0,
                                                  'changed' => 0,
                                                  'prods' => [
                                                               bless( {
                                                                        'dircount' => 0,
                                                                        'actcount' => 1,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'lookahead' => 0,
                                                                                              'line' => 76,
                                                                                              'description' => '\'[\'',
                                                                                              'hashname' => '__STRING1__',
                                                                                              'pattern' => '['
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'matchrule' => 0,
                                                                                              'line' => 76,
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'implicit' => undef,
                                                                                              'subrule' => 'name'
                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                     bless( {
                                                                                              'matchrule' => 0,
                                                                                              'min' => 0,
                                                                                              'subrule' => 'types',
                                                                                              'lookahead' => 0,
                                                                                              'repspec' => '?',
                                                                                              'argcode' => undef,
                                                                                              'line' => 76,
                                                                                              'max' => 1,
                                                                                              'expected' => undef
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'expected' => undef,
                                                                                              'line' => 76,
                                                                                              'max' => 1,
                                                                                              'matchrule' => 0,
                                                                                              'lookahead' => 0,
                                                                                              'repspec' => '?',
                                                                                              'argcode' => undef,
                                                                                              'min' => 0,
                                                                                              'subrule' => 'topname'
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'min' => 0,
                                                                                              'subrule' => 'reify',
                                                                                              'lookahead' => 0,
                                                                                              'repspec' => '?',
                                                                                              'argcode' => undef,
                                                                                              'matchrule' => 0,
                                                                                              'max' => 1,
                                                                                              'line' => 76,
                                                                                              'expected' => undef
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'max' => 1,
                                                                                              'line' => 76,
                                                                                              'expected' => undef,
                                                                                              'matchrule' => 0,
                                                                                              'subrule' => 'subject',
                                                                                              'min' => 0,
                                                                                              'lookahead' => 0,
                                                                                              'argcode' => undef,
                                                                                              'repspec' => '?'
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'expected' => undef,
                                                                                              'max' => 100000000,
                                                                                              'line' => 76,
                                                                                              'lookahead' => 0,
                                                                                              'repspec' => 's?',
                                                                                              'argcode' => undef,
                                                                                              'min' => 0,
                                                                                              'subrule' => 'indicator',
                                                                                              'matchrule' => 0
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'lookahead' => 0,
                                                                                              'description' => '\']\'',
                                                                                              'hashname' => '__STRING2__',
                                                                                              'pattern' => ']',
                                                                                              'line' => 76
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'code' => '{
#warn "topic ".Dumper \\@item;
			  my $id = $store->internalize ($item[2] => $item[6]->[0]); # maybe there is a subject addr, maybe not

			  # add the subject indicators
			  map { $store->internalize ($id => $_ ) } @{$item[7]};


			  if ($item[3] and $item[3]->[0]) {
			      $store->assert ( map {
                                                       [ undef, 
							 undef, 
							 \'isa\', 
							 undef,
							 [ \'class\', \'instance\' ], 
							 [ $_,       $id ],
							 ] }  
						         @{$item[3]->[0]} );
			      map { $implicits->{\'isa-thing\'}->{$_}++ } @{$item[3]->[0]};   # the types and the ID are declared implicitely
			  }
#warn "item 4".Dumper $item[4];
			  if ($item[4] and @{$item[4]}) {
			      my $topnames = $item[4]->[0];
#warn "topnames ".Dumper $topnames;
			      my ($a) = $store->assert ( map {[ undef,                                            # LID
								   $topnames->{scope}->[0],                       # SCOPE
								   \'name\',                                        # TYPE
								   TM->NAME,                                      # KIND
								   [ \'thing\', \'value\' ],                          # ROLES
								   [ $id,     $_ ],                               # PLAYERS
								   undef ] }
							    @{$topnames->{names}}[0] );       # use the first for a name
			      $return = $a;
# TODO (2..3) for the variants

#warn "basename reify ".Dumper $item[5];
			      # reification of the basename
			      $store->internalize ($item[5]->[0], $a->[TM->LID]) if $item[5]->[0];

			      {
				  map { $implicits->{\'isa-scope\'}->{ $_ }++ } @{$topnames->{scope}};
			      }
			  }

			  $return = $id;
		      }',
                                                                                              'lookahead' => 0,
                                                                                              'line' => 77,
                                                                                              'hashname' => '__ACTION1__'
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'patcount' => 0,
                                                                        'error' => undef,
                                                                        'strcount' => 2,
                                                                        'number' => 0,
                                                                        'line' => undef,
                                                                        'uncommit' => undef
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ]
                                                }, 'Parse::RecDescent::Rule' ),
                              'comment' => bless( {
                                                    'impcount' => 0,
                                                    'changed' => 0,
                                                    'prods' => [
                                                                 bless( {
                                                                          'error' => undef,
                                                                          'number' => 0,
                                                                          'uncommit' => undef,
                                                                          'strcount' => 2,
                                                                          'line' => undef,
                                                                          'dircount' => 0,
                                                                          'actcount' => 0,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'hashname' => '__STRING1__',
                                                                                                'description' => '\'/*\'',
                                                                                                'pattern' => '/*',
                                                                                                'line' => 208,
                                                                                                'lookahead' => 0
                                                                                              }, 'Parse::RecDescent::Literal' ),
                                                                                       bless( {
                                                                                                'mod' => 's',
                                                                                                'hashname' => '__PATTERN1__',
                                                                                                'description' => '/.+?/s',
                                                                                                'rdelim' => '/',
                                                                                                'line' => 208,
                                                                                                'lookahead' => 0,
                                                                                                'ldelim' => '/',
                                                                                                'pattern' => '.+?'
                                                                                              }, 'Parse::RecDescent::Token' ),
                                                                                       bless( {
                                                                                                'lookahead' => 0,
                                                                                                'pattern' => '*/',
                                                                                                'hashname' => '__STRING2__',
                                                                                                'description' => '\'*/\'',
                                                                                                'line' => 208
                                                                                              }, 'Parse::RecDescent::Literal' )
                                                                                     ],
                                                                          'patcount' => 1
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'vars' => '',
                                                    'opcount' => 0,
                                                    'line' => 208,
                                                    'name' => 'comment',
                                                    'calls' => []
                                                  }, 'Parse::RecDescent::Rule' ),
                              'occ_type' => bless( {
                                                     'name' => 'occ_type',
                                                     'calls' => [
                                                                  'name'
                                                                ],
                                                     'vars' => '',
                                                     'opcount' => 0,
                                                     'line' => 196,
                                                     'prods' => [
                                                                  bless( {
                                                                           'line' => undef,
                                                                           'number' => 0,
                                                                           'strcount' => 0,
                                                                           'uncommit' => undef,
                                                                           'error' => undef,
                                                                           'patcount' => 0,
                                                                           'actcount' => 0,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'lookahead' => 0,
                                                                                                 'argcode' => undef,
                                                                                                 'subrule' => 'name',
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'line' => 196
                                                                                               }, 'Parse::RecDescent::Subrule' )
                                                                                      ],
                                                                           'dircount' => 0
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'impcount' => 0,
                                                     'changed' => 0
                                                   }, 'Parse::RecDescent::Rule' ),
                              'basename' => bless( {
                                                     'vars' => '',
                                                     'opcount' => 0,
                                                     'line' => 141,
                                                     'calls' => [
                                                                  'string'
                                                                ],
                                                     'name' => 'basename',
                                                     'changed' => 0,
                                                     'impcount' => 0,
                                                     'prods' => [
                                                                  bless( {
                                                                           'error' => undef,
                                                                           'strcount' => 0,
                                                                           'number' => 0,
                                                                           'line' => undef,
                                                                           'uncommit' => undef,
                                                                           'dircount' => 0,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'subrule' => 'string',
                                                                                                 'implicit' => undef,
                                                                                                 'argcode' => undef,
                                                                                                 'lookahead' => 0,
                                                                                                 'line' => 141,
                                                                                                 'matchrule' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'code' => '{ $return = new TM::Literal ($item[1], \'xsd:string\'); }',
                                                                                                 'lookahead' => 0,
                                                                                                 'line' => 141,
                                                                                                 'hashname' => '__ACTION1__'
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1,
                                                                           'patcount' => 0
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ]
                                                   }, 'Parse::RecDescent::Rule' ),
                              'name' => bless( {
                                                 'calls' => [],
                                                 'name' => 'name',
                                                 'opcount' => 0,
                                                 'vars' => '',
                                                 'line' => 212,
                                                 'prods' => [
                                                              bless( {
                                                                       'number' => 0,
                                                                       'strcount' => 0,
                                                                       'line' => undef,
                                                                       'uncommit' => undef,
                                                                       'error' => undef,
                                                                       'patcount' => 1,
                                                                       'dircount' => 1,
                                                                       'actcount' => 1,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'mod' => '',
                                                                                             'line' => 212,
                                                                                             'hashname' => '__PATTERN1__',
                                                                                             'description' => '/^\\\\w[:\\\\-\\\\w]*/',
                                                                                             'rdelim' => '/',
                                                                                             'ldelim' => '/',
                                                                                             'lookahead' => 0,
                                                                                             'pattern' => '^\\w[:\\-\\w]*'
                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                    bless( {
                                                                                             'code' => '{
			  my $name = $item[1];
			  if ($name =~ /^(\\w+):/) {
			      my $prefix = $1;
			      if ($prefixes{$prefix}) {
				  $name =~ s/^$prefix:/$prefixes{$prefix}/;
				  $return = $name;
			      } else {
				  $return = undef;
			      }
			  } else {
			      $return = $name;
			  }
		      }',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 213,
                                                                                             'hashname' => '__ACTION1__'
                                                                                           }, 'Parse::RecDescent::Action' ),
                                                                                    bless( {
                                                                                             'name' => '<reject: ! $return>',
                                                                                             'code' => '( ! $return) ? undef : 1',
                                                                                             'lookahead' => 0,
                                                                                             'line' => 227,
                                                                                             'hashname' => '__DIRECTIVE1__'
                                                                                           }, 'Parse::RecDescent::Directive' )
                                                                                  ]
                                                                     }, 'Parse::RecDescent::Production' ),
                                                              bless( {
                                                                       'actcount' => 1,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'mod' => '',
                                                                                             'hashname' => '__PATTERN1__',
                                                                                             'description' => '/^\\\\w[-\\\\w]*/',
                                                                                             'rdelim' => '/',
                                                                                             'line' => 228,
                                                                                             'lookahead' => 0,
                                                                                             'ldelim' => '/',
                                                                                             'pattern' => '^\\w[-\\w]*'
                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                    bless( {
                                                                                             'line' => 229,
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'code' => '{
			  $return = $item[1];
		      }',
                                                                                             'lookahead' => 0
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'dircount' => 0,
                                                                       'patcount' => 1,
                                                                       'error' => undef,
                                                                       'number' => 1,
                                                                       'line' => 228,
                                                                       'strcount' => 0,
                                                                       'uncommit' => undef
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'changed' => 0,
                                                 'impcount' => 0
                                               }, 'Parse::RecDescent::Rule' ),
                              'prefix_directive' => bless( {
                                                             'impcount' => 0,
                                                             'changed' => 0,
                                                             'prods' => [
                                                                          bless( {
                                                                                   'dircount' => 0,
                                                                                   'items' => [
                                                                                                bless( {
                                                                                                         'lookahead' => 0,
                                                                                                         'pattern' => '#PREFIX',
                                                                                                         'hashname' => '__STRING1__',
                                                                                                         'description' => '\'#PREFIX\'',
                                                                                                         'line' => 32
                                                                                                       }, 'Parse::RecDescent::Literal' ),
                                                                                                bless( {
                                                                                                         'hashname' => '__PATTERN1__',
                                                                                                         'rdelim' => '/',
                                                                                                         'description' => '/\\\\w+/',
                                                                                                         'line' => 32,
                                                                                                         'mod' => '',
                                                                                                         'pattern' => '\\w+',
                                                                                                         'lookahead' => 0,
                                                                                                         'ldelim' => '/'
                                                                                                       }, 'Parse::RecDescent::Token' ),
                                                                                                bless( {
                                                                                                         'lookahead' => 0,
                                                                                                         'line' => 32,
                                                                                                         'hashname' => '__STRING2__',
                                                                                                         'description' => '\'@\'',
                                                                                                         'pattern' => '@'
                                                                                                       }, 'Parse::RecDescent::Literal' ),
                                                                                                bless( {
                                                                                                         'line' => 32,
                                                                                                         'matchrule' => 0,
                                                                                                         'subrule' => 'uri',
                                                                                                         'implicit' => undef,
                                                                                                         'lookahead' => 0,
                                                                                                         'argcode' => undef
                                                                                                       }, 'Parse::RecDescent::Subrule' ),
                                                                                                bless( {
                                                                                                         'line' => 33,
                                                                                                         'hashname' => '__ACTION1__',
                                                                                                         'code' => '{
			  my $uri = $item[4];
#			  $uri =~ s/^\\"//; $uri =~ s/\\"$//;
			  $prefixes{$item[2]} = $uri;
#warn "prefixes ".Dumper \\%prefixes;
		      }',
                                                                                                         'lookahead' => 0
                                                                                                       }, 'Parse::RecDescent::Action' )
                                                                                              ],
                                                                                   'actcount' => 1,
                                                                                   'patcount' => 1,
                                                                                   'error' => undef,
                                                                                   'number' => 0,
                                                                                   'uncommit' => undef,
                                                                                   'strcount' => 2,
                                                                                   'line' => undef
                                                                                 }, 'Parse::RecDescent::Production' )
                                                                        ],
                                                             'opcount' => 0,
                                                             'vars' => '',
                                                             'line' => 30,
                                                             'calls' => [
                                                                          'uri'
                                                                        ],
                                                             'name' => 'prefix_directive'
                                                           }, 'Parse::RecDescent::Rule' ),
                              'occ_topic' => bless( {
                                                      'vars' => '',
                                                      'opcount' => 0,
                                                      'line' => 194,
                                                      'calls' => [
                                                                   'name'
                                                                 ],
                                                      'name' => 'occ_topic',
                                                      'changed' => 0,
                                                      'impcount' => 0,
                                                      'prods' => [
                                                                   bless( {
                                                                            'patcount' => 0,
                                                                            'dircount' => 0,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'lookahead' => 0,
                                                                                                  'argcode' => undef,
                                                                                                  'subrule' => 'name',
                                                                                                  'implicit' => undef,
                                                                                                  'matchrule' => 0,
                                                                                                  'line' => 194
                                                                                                }, 'Parse::RecDescent::Subrule' )
                                                                                       ],
                                                                            'actcount' => 0,
                                                                            'strcount' => 0,
                                                                            'number' => 0,
                                                                            'line' => undef,
                                                                            'uncommit' => undef,
                                                                            'error' => undef
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ]
                                                    }, 'Parse::RecDescent::Rule' ),
                              'string' => bless( {
                                                   'name' => 'string',
                                                   'calls' => [],
                                                   'vars' => '',
                                                   'opcount' => 0,
                                                   'line' => 210,
                                                   'prods' => [
                                                                bless( {
                                                                         'dircount' => 0,
                                                                         'actcount' => 1,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'lookahead' => 0,
                                                                                               'description' => '\'"\'',
                                                                                               'hashname' => '__STRING1__',
                                                                                               'pattern' => '"',
                                                                                               'line' => 210
                                                                                             }, 'Parse::RecDescent::Literal' ),
                                                                                      bless( {
                                                                                               'line' => 210,
                                                                                               'hashname' => '__PATTERN1__',
                                                                                               'description' => '/[^\\\\"]*/',
                                                                                               'rdelim' => '/',
                                                                                               'mod' => '',
                                                                                               'pattern' => '[^\\"]*',
                                                                                               'ldelim' => '/',
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Token' ),
                                                                                      bless( {
                                                                                               'lookahead' => 0,
                                                                                               'line' => 210,
                                                                                               'hashname' => '__STRING2__',
                                                                                               'description' => '\'"\'',
                                                                                               'pattern' => '"'
                                                                                             }, 'Parse::RecDescent::Literal' ),
                                                                                      bless( {
                                                                                               'code' => '{ $return = $item[2]; }',
                                                                                               'lookahead' => 0,
                                                                                               'line' => 210,
                                                                                               'hashname' => '__ACTION1__'
                                                                                             }, 'Parse::RecDescent::Action' )
                                                                                    ],
                                                                         'patcount' => 1,
                                                                         'error' => undef,
                                                                         'strcount' => 2,
                                                                         'number' => 0,
                                                                         'uncommit' => undef,
                                                                         'line' => undef
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'changed' => 0,
                                                   'impcount' => 0
                                                 }, 'Parse::RecDescent::Rule' ),
                              'scope' => bless( {
                                                  'name' => 'scope',
                                                  'calls' => [
                                                               'name'
                                                             ],
                                                  'opcount' => 0,
                                                  'vars' => '',
                                                  'line' => 143,
                                                  'prods' => [
                                                               bless( {
                                                                        'error' => undef,
                                                                        'number' => 0,
                                                                        'strcount' => 1,
                                                                        'uncommit' => undef,
                                                                        'line' => undef,
                                                                        'dircount' => 0,
                                                                        'actcount' => 1,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'lookahead' => 0,
                                                                                              'line' => 143,
                                                                                              'pattern' => '/',
                                                                                              'description' => '\'/\'',
                                                                                              'hashname' => '__STRING1__'
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'implicit' => undef,
                                                                                              'subrule' => 'name',
                                                                                              'argcode' => undef,
                                                                                              'lookahead' => 0,
                                                                                              'line' => 143,
                                                                                              'matchrule' => 0
                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                     bless( {
                                                                                              'line' => 143,
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'code' => '{ $return = $item[2]; }',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'patcount' => 0
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'impcount' => 0,
                                                  'changed' => 0
                                                }, 'Parse::RecDescent::Rule' )
                            },
                 'startcode' => '',
                 '_check' => {
                               'prevline' => '',
                               'prevcolumn' => '',
                               'thisoffset' => '',
                               'thiscolumn' => '',
                               'itempos' => '',
                               'prevoffset' => ''
                             },
                 'namespace' => 'Parse::RecDescent::TM::LTM::CParser',
                 '_AUTOACTION' => undef,
                 'localvars' => '',
                 '_AUTOTREE' => undef
               }, 'Parse::RecDescent' );
}