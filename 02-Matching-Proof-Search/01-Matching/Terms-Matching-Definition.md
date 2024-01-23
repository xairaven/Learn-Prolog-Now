1. If `term1` and `term2` are constants, then `term1` and `term2` match if and only if they
are the same atom, or the same number.
2. If `term1` is a variable and `term2` is any type of term, then `term1` and `term2` match,
and `term1` is instantiated to `term2`. Similarly, if `term2` is a variable and `term1` is any
type of term, then `term1` and `term2` match, and `term2` is instantiated to `term1`. (So
if they are both variables, they're both instantiated to each other, and we say that they
share values.)
3. If `term1` and `term2` are complex terms, then they match if and only if:
    
    a. They have the same functor and arity.
    
    b. All their corresponding arguments match
    
    c. and the variable instantiations are compatible. (I.e. it is not possible to instantiate
    variable X to mia, when matching one pair of arguments, and to then instantiate
    X to vincent, when matching another pair of arguments.)
4. Two terms match if and only if it follows from the previous three clauses that they
match.