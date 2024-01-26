Here is a tiny lexicon and mini grammar with only one rule which defines a
sentence as consisting of five words: an article, a noun, a verb, and again an
article and a noun.

```prolog
word(article,a).
word(article,every).
word(noun,criminal).
word(noun,'big kahuna burger').
word(verb,eats).
word(verb,likes).
```

```prolog
sentence(Word1,Word2,Word3,Word4,Word5) :-
    word(article, Word1),
    word(noun, Word2),
    word(verb, Word3),
    word(article, Word4),
    word(noun, Word5).
```

What query do you have to pose in order to find out which sentences the
grammar can generate? 

```prolog
?- sentence(A, B, C, D, E).
```

List all sentences that this grammar can generate in the
order Prolog will generate them.

Listing: [*link*](./prolog/Exercise-3-Listing.md)


```
a criminal eats a criminal
a criminal eats a big kahuna burger
a criminal eats every criminal
a criminal eats every big kahuna burger
a criminal likes a criminal
a criminal likes a big kahuna burger
a criminal likes every criminal
a criminal likes every big kahuna burger
a big kahuna burger eats a criminal
a big kahuna burger eats a big kahuna burger
a big kahuna burger eats every criminal
a big kahuna burger eats every big kahuna burger
a big kahuna burger likes a criminal
a big kahuna burger likes a big kahuna burger
a big kahuna burger likes every criminal
a big kahuna burger likes every big kahuna burger
every criminal eats a criminal
every criminal eats a big kahuna burger
every criminal eats every criminal
every criminal eats every big kahuna burger
every criminal likes a criminal
every criminal likes a big kahuna burger
every criminal likes every criminal
every criminal likes every big kahuna burger
every big kahuna burger eats a criminal
every big kahuna burger eats a big kahuna burger
every big kahuna burger eats every criminal
every big kahuna burger eats every big kahuna burger
every big kahuna burger likes a criminal
every big kahuna burger likes a big kahuna burger
every big kahuna burger likes every criminal
every big kahuna burger likes every big kahuna burger
```

Make sure that you understand why Prolog generates them in this order.

`Because prolog’s search strategy is depth-first.`