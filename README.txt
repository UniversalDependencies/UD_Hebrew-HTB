Universal Dependencies - Hebrew Dependency Treebank (v1)
https://github.com/UniversalDependencies/UD_Hebrew

A Universal Dependencies Corpus for Hebrew.

The corpus was built by semi-automatic conversion of the
Hebrew Constituency Treebank (v2).

STRUCTURE

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
sentences 0-483 dev, 484-5724 train, 5725-6216 test.

Some parts of the structure are more reliable than others. In particular, words with a "morphological feature"
entry of HebSource=ConvUncertainHead or HebSource=ConvUncertainLabel indicate that the head (label) information
for this token is based on unreliable information.

FIXES

To help improve the corpus, please alert us to any errors you find in it;
contact Yoav Goldberg at yoav.goldberg@gmail.com or Reut Tsarfaty at reut.tsarfaty@gmail.com


CONTRIBUTORS

The Universal Dependencies Hebrew Treebank created by:
(in alphabetic order):

- Yoav Goldberg
- Reut Tsarfaty

The Universal Dependencies Hebrew Treebank is based on the
Hebrew Constituency Treebank (v2) developed by MILA, The Knowledge Center for Processing Hebrew.
(http://www.mila.cs.technion.ac.il/resources_treebank.html)


CITATIONS

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



Documentation status: stub
Data source: unknown
Data available since: UD v1.1
License: CC BY-NC-SA 4.0
