CREATE TABLE segment (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `ipa_symbol` VARCHAR(8) NOT NULL UNIQUE,
    `sampa_symbol` VARCHAR(8) DEFAULT NULL,
    `cmudict_symbol` VARCHAR(8) DEFAULT NULL,
    `name` VARCHAR(55) DEFAULT NULL,
    `description` VARCHAR(255) DEFAULT NULL,
--  IPA Chart Locations:
--  Bila­bial, Labio-dental, Dental, Alveolar, Post­alveolar, Retroflex, Alveolo-palatal, Palatal, Velar, Uvular, Pharyngeal, Epiglottal, Glottal
--  (Vowel height): Close, Near-close, Close-mid, Mid, Open-mid, Near-Open, Open
--  (Vowel Frontnes): Front, Near-front, Central, Near-back, Back
    `ipa_place` VARCHAR(55) DEFAULT NULL,
--  IPA Type: Pulmonic Consonant, Non-pulmonic Consonant, Affricate, Co-articulated Consonant, Vowel, Dyphthong
    `ipa_type` VARCHAR(55) DEFAULT NULL,
--  IPA Chart Manner:
--  Pulmonic Consonants:
--  Nasal, Stop, Sibilant fricative' Non-sibilant fricative, Approximant, Flap or tap, Trill, Lateral fricative, Lateral approximant, Lateral flap
--  Non-pulmonic Consonants: Click, Implosive, Ejective
--  Affricates and other Co-articulated Consonants: Cantinuant, Occlusive
    `ipa_manner` VARCHAR(55) DEFAULT NULL,
--  Major Class Features:
    `sylabic` TINYINT(1) DEFAULT NULL,
    `consonantal` TINYINT(1) DEFAULT NULL,
    `aproximant` TINYINT(1) DEFAULT NULL,
    `sonorant` TINYINT(1) DEFAULT NULL,
--  Laryngeal Features:
    `voice` TINYINT(1) DEFAULT NULL,
    `spread_glotis` TINYINT(1) DEFAULT NULL,
    `constricted_glotis` TINYINT(1) DEFAULT NULL,
--  Manner Features:
    `continuant` TINYINT(1) DEFAULT NULL,
    `nasal` TINYINT(1) DEFAULT NULL,
    `strident` TINYINT(1) DEFAULT NULL,
    `lateral` TINYINT(1) DEFAULT NULL,
    `delayed_release` TINYINT(1) DEFAULT NULL,
--  Place Features:
--  LABIAL
    `labial` TINYINT(1) DEFAULT NULL,
    `round` TINYINT(1) DEFAULT NULL,
--  CORONAL
    `coronal` TINYINT(1) DEFAULT NULL,
    `anterior` TINYINT(1) DEFAULT NULL,
    `distributed` TINYINT(1) DEFAULT NULL,
--  DORSAL
    `dorsal` TINYINT(1) DEFAULT NULL,
    `high` TINYINT(1) DEFAULT NULL,
    `low` TINYINT(1) DEFAULT NULL,
    `back` TINYINT(1) DEFAULT NULL,
    `tense` TINYINT(1) DEFAULT NULL,
--  RADICAL
    `radical` TINYINT(1) DEFAULT NULL,
--  LARYNGEAL
    `laryngeal` TINYINT(1) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
