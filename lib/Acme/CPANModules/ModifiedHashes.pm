package Acme::CPANModules::ModifiedHashes;

use strict;

use Acme::CPANModulesUtil::Misc;

# AUTHORITY
# DATE
# DIST
# VERSION

my $text = <<'MARKDOWN';
These modules allow you to create hashes that don't behave like a normal Perl hash.


**Accessing hash values using approximate keys (fuzzy hash)**

<pm:Tie::Hash::Approx>


**Allowing key aliases (multiple keys that refer to the same value)**

<pm:Tie::Alias::Hash>

<pm:Tie::Hash::Abbrev>


**Allowing multiple keys (list of keys)**

<pm:Tie::Hash::MultiKey>


**Allowing references as keys**

<pm:Hash::ExtendedKeys>


**Case-insensitive hash keys**

<pm:Tie::CPHash>


**Encrypting values**

<pm:Tie::EncryptedHash>


**Ordered**

There are several modules that provide ordered hash, see separate list mentioned
in SEE ALSO section.


**Remembering keys only temporarily**

Keywords: cache

<pm:Tie::Hash::Expire>


**Remembering only a certain number of keys**

Keywords: cache

<pm:Tie::CacheHash>

<pm:Tie::Cache>

<pm:Tie::Cache::LRU>


**Restricted keys**

Hashes that only allow certain keys and not others.

<pm:Hash::RestrictedKeys>


**Using regular expressions as hash keys**

<pm:Tie::RegexpHash>

<pm:Tie::Hash::Regex>

<pm:Tie::Hash::RegexKeys>


**Others**

<pm:Tie::Hash::Log>

<pm:Tie::Hash::NoOp>

MARKDOWN

our $LIST = {
    summary => "List of modules that provide hashes with modified behaviors",
    description => $text,
};

Acme::CPANModulesUtil::Misc::populate_entries_from_module_links_in_description();

1;
# ABSTRACT:

=head1 DESCRIPTION


=head1 BENCHMARK NOTES

L<Hash::Ordered> has strong performance in iterating and returning keys, while
L<List::Unique::DeterministicOrder> is strong in insertion and deletion (or
L<Tie::Hash::Indexed> if you're looking for actual hash type).


=head1 prepend:SEE ALSO

L<Acme::CPANModules::OrderedHash>
