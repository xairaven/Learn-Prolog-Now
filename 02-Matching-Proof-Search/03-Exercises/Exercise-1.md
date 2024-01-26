Which of the following pairs of terms match? Where relevant, give the variable
instantiations that lead to successful matching.

1. bread = bread
    * **True** | Equal atoms
2. 'Bread' = bread
    * **False** | Not equal atoms
3. 'bread' = bread
    * **True** | Because first and second argument are equal atoms
4. Bread = bread
    * **True** | Variable Bread instantiated with atom bread (Bread = bread)
5. bread = sausage
    * **False** | Different atoms
6. food(bread) = bread
    * **False** | Complex term cannot be equal with atom
7. food(bread) = X
    * **True** | Variable X instantiated with complex term
8. food(X) = food(bread)
    * **True** | X = bread
9. food(bread,X) = food(Y,sausage)
    * **True** | X = sausage, Y = bread
10. food(bread,X,beer) = food(Y,sausage,X)
    * **False** | X cannot be sausage and beer at the same moment
11. food(bread,X,beer) = food(Y,kahuna_burger)
    * **False** | Different arity
12. food(X) = X
    * **True** | X = food(X)
13. meal(food(bread),drink(beer)) = meal(X,Y)
    * **True** | X = food(bread), Y = drink(beer).
14. meal(food(bread),X) = meal(X,drink(beer))
    * **False** | drink(beer) != food(bread)