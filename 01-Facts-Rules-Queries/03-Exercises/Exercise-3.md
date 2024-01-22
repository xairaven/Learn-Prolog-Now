How many facts, rules, clauses, and predicates are there in the following knowledge base? 
What are the heads of the rules, and what are the goals they contain?

```prolog
woman(vincent).                             % Fact | Clause | Predicate (without a body)
woman(mia).                                 % Fact | Clause | Predicate (without a body)
man(jules).                                 % Fact | Clause | Predicate (without a body)
person(X) :- man(X); woman(X).              % Rule | Clause | Predicate (with body)
loves(X,Y) :- knows(Y,X).                   % Rule | Clause | Predicate (with body)
father(Y,Z) :- man(Y), son(Z,Y).            % Rule | Clause | Predicate (with body)
father(Y,Z) :- man(Y), daughter(Z,Y).       % Rule | Clause | Predicate (with body)
```

The part of the rule before ":-" is called "head".
The part of the rule after ":-" is called "goal".

**Facts:** 3
**Rules:** 4
**Clauses:** 7
**Predicates:** 7