Which of the following sequences of characters are atoms, which are variables,
which are complex terms, and which are not terms at all? Give the functor and
arity of each complex term. 

1. loves(Vincent,mia)               --> **Complex term** | **Functor:** *loves* | **Arity:** *2*
2. 'loves(Vincent,mia)'             --> **Atom**
3. Butch(boxer)                     --> **Not a Term**
4. boxer(Butch)                     --> **Complex term** | **Functor:** *boxer* | **Arity:** *1*
5. and(big(burger),kahuna(burger))  --> **Complex term** | **Functor:** *and* | **Arity:** *2*
6. and(big(X),kahuna(X))            --> **Complex term** | **Functor:** *and* | **Arity:** *2*
7. _and(big(X),kahuna(X))           --> **Not a Term**
8. (Butch kills Vincent)            --> **Not a Term**
9. kills(Butch Vincent)             -->  **Not a Term**
10. kills(Butch,Vincent             --> **Not a Term**