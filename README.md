# Summary

IAHLT version of the UD Hebrew Treebank (IAHLT-HTB)


# Introduction

## What is this?

This is a revised fork of the Universal Dependencies version of the Hebrew Treebank, with some important changes and a consistency overhaul involving substantial manual corrections. The dataset was prepared as part of the Hebrew & Arabic Corpus Linguistics Infrastructure project at [the Israeli Association of Human Language Technologies](https://www.iahlt.org/) (IAHLT).

Before using this data it is highly recommended to read the IAHLT treebanking documentation **(coming soon!)** and reading the general principles outlined below. This dataset is currently still a **work in progress**.

Universal Dependencies - Hebrew Dependency Treebank (v2)
https://github.com/UniversalDependencies/UD_Hebrew

## General principles

This version of the HTB data follows the following principles:

  * Aim for convergence with other UD languages, and in particular Arabic
  * No addition of segments without corresponding characters in the text. This means that as in Arabic, there are no inserted _של_ in clitic possessives, no _את_ in clitic objects
  * Representation of articles following prepositions using a morphological definiteness feature, rather than pseudo tokens
  * Removal of strictly predictable dependency subtypes (e.g. only use `case` rather than `case:gen` and `case:acc` for של and את, remove `mark:q`)
  * Multiword token strings should be the sum of their consituent token texts, allowing for simpler segmentation models (highly constrained search space) - thus forms like לה comprise two tokens ל and ה (as in UD Arabic)
  * Clear separation of universal POS tags based on function (ADV for `advmod`, SCONJ for `mark`, ADP for `case` etc.)
  * More consistent treatment of proper nouns as a gateway for downstream NER (all tokens inside named entities which would otherwise be NOUN are PROPN)
  * More constrained lists of closed class items such as fixed expressions
  * Rework auxiliaries, reanalyzing impersonal modals as predicates with clausal subjects
  * Introduce previously unused labels with their usual functions (e.g. `expl`)
  * More generally, producing valid (non-legacy) UD data in line with the current Universal Dependencies validator tool (available [here](https://github.com/UniversalDependencies/tools))

## History

V1 of the dependency corpus was built by semi-automatic conversion of the Hebrew Constituency Treebank (v2) by MILA.

V2, refered to below as UD-HTB, was converted from V1, using a combination of automatic conversion when possible, and manual conversion and verification in other cases (see papers below).

This version is currently refered to as IAHLT-HTB.

# Structure

**TODO**: update token numbers once stabilized

This directory contains a corpus of sentences annotated using Universal Dependencies annotation.
The corpus comprises 115,535 tokens (158,855 words) and 6,216 sentences, taken from the `Ha'aretz` newspaper.
The trees were manually annotated into phrase-structure trees, and then semi-automatically converted
into Universal Dependencies.

This file is compatible with the CoNLL-U format defined for Universal Dependencies. See:
http://universaldependencies.github.io/docs/format.html . However, at present the files do not
include lemmas for words. These may be added in a later release.

The dependency taxonomy can be found on the Universal Dependencies web site:

    http://universaldependencies.github.io/docs/
    http://universaldependencies.github.io/docs/#language-he

The Train/Dev/Test split follows previous splits of the underlying Treebank, namely:
sentences 1-484 dev (10,534 tokens), 485-5725 train (127,363 tokens), 5726-6216 test (11,386 tokens).

Some parts of the structure are more reliable than others. In particular, words with a "morphological feature"
entry of HebSource=ConvUncertainHead or HebSource=ConvUncertainLabel indicate that the head (label) information
for this token is based on unreliable information.


# Fixes

To help improve the corpus, please alert us to any errors you find in it;
For underlying issues in the source data (UD-HTB) contact Yoav Goldberg at yoav.goldberg@gmail.com or Reut Tsarfaty at reut.tsarfaty@gmail.com

For issues specific to the IAHLT-HTB version, please contact Amir Zeldes at amir-zeldes@georgetown.edu


# Acknowledgments

The Universal Dependencies Hebrew Treebank created by:
(in alphabetic order):

- Yoav Goldberg
- Reut Tsarfaty

- The following people were also involved in the creation of v2:
- Amir More (adding Lemmas, detokenization, v1->v2 conversion)
- Yuval Pinter (documentation)
- Shoval Sadde (documentation, v2 validation and conversion)
- Victoria Basmov (v2 validation and conversion)

The Universal Dependencies Hebrew Treebank is based on the
Hebrew Constituency Treebank (v2) developed by MILA, The Knowledge Center for Processing Hebrew.
(http://www.mila.cs.technion.ac.il/resources_treebank.html)

## References

You are encouraged to cite these papers if you use the Hebrew Universal Dependencies Treebank:

    @inproceedings{tsarfaty2013unified,
        title={A Unified Morpho-Syntactic Scheme of Stanford Dependencies},
        author={Tsarfaty, Reut},
        booktitle={Proc. of ACL},
        year={2013}
    }

    @inproceedings{mcdonald2013universal,
        title={Universal Dependency Annotation for Multilingual Parsing},
        author={McDonald, Ryan T and Nivre, Joakim and Quirmbach-Brundage, Yvonne and Goldberg, Yoav and Das, Dipanjan and Ganchev, Kuzman and Hall, Keith B and Petrov, Slav and Zhang, Hao and T{\"a}ckstr{\"o}m, Oscar and others},
        booktitle={Proc. of ACL},
        year={2013}
    }

Note that these papers do not accurately reflect the current annotation in the Treebank. A more up-to-date publication
is forthcoming.



# Changelog

* v2.8
  * Fixed validation issues with lang-spec relations and features.
  * Attribute HebSource moved from FEATS to MISC; same for undocumented Xtra=Junk.
  * HebExistential changed from True to Yes as with other boolean features in UD.
* v2.2
  * Repository renamed from UD_Hebrew to UD_Hebrew-HTB.
* v2.0
  * Conversion to UD v2 guidelines.
* v1.2
  * Fixed a labeling bug.



<pre>
=== Machine-readable metadata (DO NOT REMOVE!) ================================
Data available since: UD v1.1
License: CC BY-NC-SA 4.0
Includes text: yes
Genre: news
Lemmas: converted from manual
UPOS: converted from manual
XPOS: manual native
Features: converted from manual
Relations: converted from manual
Contributors: Goldberg, Yoav; Tsarfaty, Reut; More, Amir; Sadde, Shoval; Basmov, Victoria
Contributing: elsewhere
Contact: yoav.goldberg@gmail.com, reut.tsarfaty@gmail.com, habeanf@gmail.com, shovatz@gmail.com, vikasaeta@gmail.com
===============================================================================
</pre>
