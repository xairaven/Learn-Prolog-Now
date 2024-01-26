Examples:

1. a \= a
   * **False** | Equal atoms 
2. 'a' \= a
   * **False** | Equal atoms  
3. A \= a
   * **False** | Because A is instantiated by 'a' at this moment (?)  
4. f(a) \= a
   * **True** | Complex Term != Atom
5. f(a) \= A
   * **False** | Same as 3rd 
6. f(A) \= f(a)
   * **False** | Different complex terms
7. g(a,B,c) \= g(A,b,C)
   * **False** | Same as 6th
8. g(a,b,c) \= g(A,C)
   * **True** | Different complex terms
9. f(X) \= X
   * **False** | Same as 3rd