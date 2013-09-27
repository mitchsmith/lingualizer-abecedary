update segments set sylabic = 1 where ipa_type = "vowel";
update segments set sylabic = 0 where ipa_type != "vowel";
select id, ipa_symbol, description, sylabic from segments;

update segments set consonantal = 0 where ipa_manner = "approximant" or ipa_type = "vowel";
update segments set consonantal = 1 where description like "%lateral%";
update segments set consonantal = 1 where consonantal is NULL;
select id, ipa_symbol, description, consonantal from segments;

update segments set approximant = 0 where ipa_manner in ('nasal','stop','fricative','sibilant', 'ejective','ejective fricative', 'affricate', 'trill', 'click', 'implosive' );
update segments set approximant = 1 where ipa_manner not in ('nasal','stop','fricative','sibilant', 'ejective','ejective fricative', 'affricate', 'trill', 'click', 'implosive' );

select id, ipa_symbol, description, sylabic, consonantal, aproximant from segments where aproximant = 1;

update segments set sonorant = 1 where ipa_manner in ('nasal','approximant') or ipa_type = "Vowel";
update segments set sonoroant = 0 where sonorant IS NULL;

select id, ipa_symbol, description, sylabic, consonantal, aproximant from segments where ipa_manner in ('nasal','approximant') or ipa_type = "Vowel";
