# Aenderung 21.04.2017: Umstellung auf Sommerzeit
# Aenderung 11.12.2016: Umstellung auf Winterzeit
# Aenderung 03.04.2016: Umstellung auf Sommerzeit
# Aenderung 11.12.2015: Umstellung auf Winterzeit
# Aenderung 29.03.2015: Umstellung auf Sommerzeit
# Aenderung 29.10.2014: Umstellung auf Winterzeit
# Inspirata Event-Feed auslesen
# Aenderung 23.08.2014: pubdate falsches Timeoffset gefixt
# Aenderung 06.08.2014: ld:hasURL zu ical:url
# 2014-05-29: Bug fixing

use XML::DOM;
use HTML::Entities;
use Time::ParseDate;
use Date::Format;
use SparqlQuery;
use strict;

my $hashtags;
getHashTags();
my $outfile="inspirata.xml"; 
system("wget -O $outfile http://www.inspirata.de/category/zukunftsveranstaltungen/feed");
my $parser=new XML::DOM::Parser;
my $dom=$parser->parsefile($outfile) or die;
my $doc;
map { $doc.=getItem($_) } $dom->getElementsByTagName("item"); 
print TurtleEnvelope($doc);

## end main ##
sub getHashTags {
  my $query = <<EOT;
PREFIX ld: <http://leipzig-data.de/Data/Model/>
SELECT distinct ?a WHERE {
  ?a a ld:Event . 
filter regex(?a,'Data/Event/Inspirata.') .
} 
EOT
  my $u=SparqlQuery::query($query);
  my $res=SparqlQuery::parseResult($u);
  map $hashtags->{$_->{"a"}}=1, (@$res);
  # print join(", ",(sort keys %$hashtags))."\n\n";
}

sub getItem {
  my $node=shift;
  my $title=getValue($node,"title");
  my $date=extractDate($title)."T12:00:00+02:00";
  my $pubDate=getDateTime(getValue($node,"pubDate"));
  $pubDate=~s/\+(\d\d)(\d\d)/+$1:$2/;
  my $creator=getValue($node,"dc:creator");
  my $guid=getValue($node,"guid");
  my $id=getId($guid);
  #return if $id eq "4366";
  #return if $id eq "6398";
  #return if $id eq "8527";
  return if $hashtags->{"http://leipzig-data.de/Data/Event/Inspirata.$id"};
  my $description=fixContent(decode_entities(getValue($node,"description")));
  my $content=fixContent(decode_entities(getValue($node,"content:encoded")));
  return <<EOT;
<http://leipzig-data.de/Data/Event/Inspirata.$id> a ld:Event;
rdfs:label "$title" ; 
ical:dtstart "$date"^^xsd:dateTime ;  # fix this 
ld:hasTag ldtag:MINT, ldtag:Inspirata ;
ical:organizer <http://leipzig-data.de/Data/Ort/Inspirata> ; 
ical:location <http://leipzig-data.de/Data/Ort/Inspirata> ; 
ical:url <$guid> ; 
ical:summary "$description" ;
ical:dtstamp "$pubDate"^^xsd:dateTime ;
ical:description "$content" .

EOT
}

sub TurtleEnvelope {
  my $out=shift;

  return <<EOT
\@prefix ical: <http://www.w3.org/2002/12/cal/ical#> .
\@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
\@prefix ld: <http://leipzig-data.de/Data/Model/> .
\@prefix ldtag: <http://leipzig-data.de/Data/Tag/> .
\@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

$out
EOT
}

sub extractDate {
  local $_=shift;
  my $date="2016-01-01";
  $date="$3-$2-$1" if m|(\d+)\.(\d+)\.(\d+)|;
  return $date;
}

sub fixContent {
  # remove links, images and leerzeilen
  local $_=shift;
  s|<a href[^>]*>||gs;
  s|</a>||gs;
  s|<img[^>]*>||gs;
  s|<div class='leerzeile'></div>||gs;
  return $_;
}

sub getId {
  local $_=shift;
  /\?p=(\d+)/;
  return $1;
}

sub getValue {
  my ($node,$tag)=@_;
  map {
    my $s=$_->toString();
    $s=~s/<[^>]*>\s*//gs;
    $s=~s/\s*<\/[^>]*>//gs;
    $s=~s/\n/ /gs;
    return $s;
  } $node->getElementsByTagName($tag,0);
}

# %z returns a wrong format +0200 instead of +02:00
sub getDateTime { return time2str("%Y-%m-%dT%T%z",parsedate(shift)); } 
sub getDate { return time2str("%Y-%m-%d",parsedate(shift)); }

__END__

