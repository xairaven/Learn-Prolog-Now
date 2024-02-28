And here is an exercise for those of you who, like me, like logic puzzles.

There is a street with three neighboring houses that all have a different color.
They are red, blue, and green. People of different nationalities live in the different
houses and they all have a different pet. Here are some more facts about them:

- The Englishman lives in the red house.
- The jaguar is the pet of the Spanish family.
- The Japanese lives to the right of the snail keeper.
- The snail keeper lives to the left of the blue house.

Who keeps the zebra?
Define a predicate `zebra/1` that tells you the nationality of the owner of the
zebra.
Hint: Think of a representation for the houses and the street. Code the four
constraints in Prolog. `member` and `sublist` might be useful predicates.

---

Code:

```prolog
prefix(P, L) :- append(P, _, L).
suffix(S, L) :- append(_, S, L).
sublist(SubL, L) :- suffix(S, L), prefix(SubL, S).

zebra_owner(ZebraOwner) :-
    Street = [_, _, _],
    member(house(red, englishman, _), Street),
    member(house(_, spanish, jaguar), Street),
    member(house(_, ZebraOwner, zebra), Street),
    sublist([house(_, _, snail), house(_, japanese, _)], Street),
    sublist([house(_, _, snail), house(blue, _, _)], Street).
```

Results:

```prolog
2 ?- zebra_owner(X).
X = japanese
```