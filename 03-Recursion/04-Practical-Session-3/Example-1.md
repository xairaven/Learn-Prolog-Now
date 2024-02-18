First the keyboard exercises. As recursive programming is so fundamental to Prolog, it is
important that you have a firm grasp of what it involves. In particular, it is important that you
understand the process of variable instantiation when recursive definitions are used, and that
you understand why both the order of the clauses in a recursive definition, and the order of
goals in rules, can make the difference between a knowledge base that is useful and one that
does not work at all. So: 

1. Load `descend1.pl`, turn on trace, and pose the query `descend(martha,laura).`.
This is the query that was discussed in the notes. Step through the trace, and relate
what you see on the screen to the discussion in the text. 

```prolog
[trace] 3 ?- descend(martha,laura).
   Call: (10) descend(martha, laura) ? creep
   Call: (11) child(martha, laura) ? creep
   Fail: (11) child(martha, laura) ? creep
   Redo: (10) descend(martha, laura) ? creep
   Call: (11) child(martha, _19362) ? creep
   Exit: (11) child(martha, charlotte) ? creep
   Call: (11) descend(charlotte, laura) ? creep
   Call: (12) child(charlotte, laura) ? creep
   Fail: (12) child(charlotte, laura) ? creep
   Redo: (11) descend(charlotte, laura) ? creep
   Call: (12) child(charlotte, _24224) ? creep
   Exit: (12) child(charlotte, caroline) ? creep
   Call: (12) descend(caroline, laura) ? creep
   Call: (13) child(caroline, laura) ? creep
   Exit: (13) child(caroline, laura) ? creep
   Exit: (12) descend(caroline, laura) ? creep
   Exit: (11) descend(charlotte, laura) ? creep
   Exit: (10) descend(martha, laura) ? creep
true .
```

There are anonymous variables which is recursively being set to Martha's descendants.

---

2. Still with trace on, pose the query `descend(martha,rose).` and count how many
steps it takes Prolog to work out the answer (that is, how many times do you have to
hit the return key). Now turn trace off and pose the query `descend(X,Y).`. How
many answers are there?

**Steps to work out the answer**: 25
**How many answers there**: 11

---

3. Load `descend2.pl`. This, remember, is the variant of `descend1.pl` in which the
order of both clauses is switched, and in addition, the order of the two goals in the
recursive goals is switched too. Because of this, even for such simple queries as
`descend(martha,laura).`, Prolog will not terminate. Step through an example, using
trace, to confirm this.

```prolog
...
Call: (8,805) descend(_243642, laura) ? creep
Call: (8,806) descend(_244454, laura) ? creep
Call: (8,807) descend(_245266, laura) ? creep
Call: (8,808) descend(_246078, laura) ? creep
Call: (8,809) descend(_246890, laura) ? creep
Call: (8,810) descend(_247702, laura) ? creep
Call: (8,811) descend(_248514, laura) ? creep
Call: (8,812) descend(_249326, laura) ? break
... and so on
```

---

4. But wait! There are two more variants of `descend1.pl` that we have not considered.
For a start, we could have written the recursive clause as follows:

```prolog
descend(X,Y) :- child(X,Y).

descend(X,Y) :- descend(Z,Y),
    child(X,Z).
```

Let us call this variant `descend3.pl`. And one further possibility remains: we could
have written the recursive definition as follows: 

```prolog
descend(X,Y) :- child(X,Z),
    descend(Z,Y).

descend(X,Y) :- child(X,Y). 
```

Let us call this variant `descend4.pl`.

Create (or download from the internet) the files `descend3.pl` and `descend4.pl`.

How do they compare to `descend1.pl` and `descend2.pl`? Can they handle the
query `descend(martha, rose).`? Can they handle queries involving variables? How
many steps do they need to find an answer? Are they slower or faster than `descend1.pl`?

Draw the search trees for `descend2.pl`, `descend3.pl` and `descend4.pl` (the one
for `descend1.pl` was given in the text) and compare them. Make sure you understand
why the programs behave the way they do.

****************************************************************************************

`descend3.pl` gives right answer, but causes Stack Overflow error while searching for a false descend.

```
true ;
ERROR: Stack limit (1.0Gb) exceeded
ERROR:   Stack sizes: local: 0.9Gb, global: 84.2Mb, trail: 0Kb
ERROR:   Stack depth: 11,030,191, last-call: 0%, Choice points: 4
ERROR:   Probable infinite recursion (cycle):
ERROR:     [11,030,190] user:descend(_22072324, rose)
ERROR:     [11,030,189] user:descend(_22072344, rose)
```

`descend4.pl` gives true answers. But that's not that optimal like `descend1.pl`

All of them is not that optimal like as `descend1.pl`.

NB! Search trees are not done, because I'm too lazy :) You can make a PR with them

---

5. Finally, load the file `numeral1.pl`. Turn on trace, and make sure that you
understand how Prolog handles both specific queries (such as `numeral(succ(succ(0)))`)
and queries involving variables (such as `numeral(X)`).

```prolog
[trace] 3 ?- numeral(succ(succ(0))).
   Call: (10) numeral(succ(succ(0))) ? creep
   Call: (11) numeral(succ(0)) ? creep
   Call: (12) numeral(0) ? creep
   Exit: (12) numeral(0) ? creep
   Exit: (11) numeral(succ(0)) ? creep
   Exit: (10) numeral(succ(succ(0))) ? creep
true.
```