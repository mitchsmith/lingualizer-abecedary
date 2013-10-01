-- The Articulatory Correlates of the Distinctive Features
-- (from Halle and Clements’ Problem Book in Phonology) 
-- https://www.msu.edu/course/asc/232/DF/ACofDFs.html

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

update segments set sonorant = 1 where ipa_manner in ('nasal', 'approximant', 'flap', 'tap', 'trill') or ipa_type = "Vowel";
update segments set sonorant = 0 where sonorant IS NULL;

select id, ipa_symbol, description, sylabic, consonantal, aproximant from segments where ipa_manner in ('nasal','approximant', 'flap', 'tap', 'trill') or ipa_type = "Vowel";

select id, ipa_symbol, description, sylabic, consonantal, aproximant from segments where description like "%voiced%" or ipa_type = "Vowel";
update segments set voice = 1 where description like "%voiced%" or ipa_type = "Vowel";
update segments set voice = 0 where voice is NULL and sonorant = 0;
update segments set voice = 1 where voice is NULL and sonorant = 1;

select id, ipa_symbol, description, sylabic, consonantal, aproximant, sonorant where sonorant = true and (description like "%fricative%" or description like "%sibilant");
update segments set continuant = 1 where description not like "%affricate%" and (description like "%fricative%" or description like "%sibilant%");
update segments set continuant = 1 where sonorant = 1;
update segments set continuant = 0 where contiunant is NULL;

select id, ipa_symbol, description from segments where desctiption like "%nasal%";
update segments set nasal = 1 where description like "%nasal%";

select id, ipa_symbol, description from segments where description like "%lateral%";
update segments set lateral = 1 where description like "%lateral%";
update segments set lateral = 0 where lateral is NULL;

select id, ipa_symbol, description from segments where (description like "%sibilant%" or description like "%fric%") and (description like "% sibilant%" or description like "%labiodental%" or description like "%uvular%");
update segments set strident = 1 where (description like "%sibilant%" or description like "%fric%") and (description like "% sibilant%" or description like "%labiodental%" or description like "%uvular%");
update segments set strident = 0 where strident is NULL;

update segments set constricted_glotis = 1 where description like "%ejective%" or description like "%implosive%" or description like "%glottal%" or description like "%approximant%" or ipa_type = "Vowel";
update segments set constricted_glotis = 0 where constricted_glotis is NULL;

update segments set delayed_release = 1 where description like "%affricate%";
update segments set delayed_release = 0 where delayed_release is NULL;

update segments set labial = 1 where description like "%labi%";
update segments set labial = 0 where labial is NULL;

update segments set round = 1 where description like "% round%";
update segments set round = 1 where labial = 1 and description like "%approximant%";
update segments set labial = 1 where round = 1;

update segments set coronal = 1 where description like "%dental%" or description like "%alveol%" or description like "%palat%";
update segments set coronal = 0 where coronal is NULL;

update segments set anterior = 1 where description like "%labi%" or description like "%dental%" or description like "% alveolar %";
update segments set anterior = 1 where anterior is NULL and description like "%alveolar%" and description not like "%palat%" and description not like "%postalveolar%";
update segments set anterior = 0 where anterior = NULL;



update segments set dorsal = 1 where ipa_type = "Vowel" or description like "%velar%" or description like "%uvular%";
update segments set dorsal = 0 where dorsal is NULL;


