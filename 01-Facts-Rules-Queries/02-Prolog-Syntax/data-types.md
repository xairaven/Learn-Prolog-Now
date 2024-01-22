There are **four** kinds of terms in Prolog: **atoms**, **numbers**, **variables**, and **complex terms (or structures)**. 
**Atoms** and **numbers** are lumped together under the heading **constants**, and constants with variables 
together make up the **simple terms** of Prolog.

---

An **atom** is either:
1. A string of characters made up of upper-case letters, lower-case letters, digits, and the
underscore character, that begins with a lower-case letter. For example: butch,
big_kahuna_burger, and m_monroe2.
2. An arbitrary sequence of character enclosed in single quotes. For example 'Vincent',
'The Gimp', 'Five_Dollar_Shake', '&^%&#@$ &*', and ' '. The character between
the single quotes is called the atom name. Note that we are allowed to use spaces in
such atoms -- in fact, a common reason for using single quotes is so we can do
precisely that.
3. A string of special characters. For example: @= and ====> and ; and :- are all atoms.
As we have seen, some of these atoms, such as ; and :- have a pre-defined meaning.

---

**Numbers:**
Real numbers aren't particularly important in typical Prolog applications. So although most
Prolog implementations do support floating point numbers or floats (that is, representations of
real numbers such as 1657.308).
But integers (that is: ... -2, -1, 0, 1, 2, 3, ...) are useful for such tasks as counting the
elements of a list. Their Prolog syntax is the obvious one: 23, 1001, 0, -365, and so on.

---

**Variables:**
A variable is a string of upper-case letters, lower-case letters, digits and underscore characters
that starts either with an upper-case letter or with underscore. For example, X, Y, Variable,
_tag, X_526, and List, List24, _head, Tail, _input and Output are all Prolog variables.
The variable _ (that is, a single underscore character) is rather special. It's called the
anonymous variable.

---

**Complex Terms:**
Complex terms are build out of a functor followed by a sequence of arguments. The
arguments are put in ordinary brackets, separated by commas, and placed after the functor.
The functor must be an atom. That is, variables cannot be used as functors. On the other
hand, arguments can be any kind of term.
For example, playsAirGuitar(jody) is a complex term: its functor is playsAirGuitar
and its argument is jody. Other examples are loves(vincent,mia) and, to give an
example containing a variable, jealous(marcellus,W).

In fact, it allows us to to keep nesting complex terms inside complex terms indefinitely 
(that is, it is a recursive definition). 

For example:
```prolog
hide(X, father(father(father(butch))))
```

is a perfectly ok complex term. Its functor is hide, and it has two arguments: the variable X,
and the complex term father(father(father(butch))). This complex term has
father as its functor, and another complex term, namely father(father(butch)), as its
sole argument. And the argument of this complex term, namely father(butch), is also
complex. But then the nesting "bottoms out", for the argument here is the constant butch.

**Arity:**
The number of arguments that a complex term has is called its **arity**. For instance, woman
(mia) is a complex term with arity 1, while loves(vincent,mia) is a complex term with
arity 2. When we need to talk about predicates and how we intend to use them (for example, in
documentation) it is usual to use a suffix **/** followed by a number to indicate the predicate's
arity.