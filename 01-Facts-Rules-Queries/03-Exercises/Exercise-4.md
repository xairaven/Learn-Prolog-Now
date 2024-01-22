Represent the following in Prolog:

1. Butch is a killer.
   
   ```prolog
   killer(butch).
   ```

2. Mia and Marcellus are married.
   
   ```prolog
   married(mia, marcellus).
   ```

3. Zed is dead.

   ```prolog
   dead(zed).
   ```

4. Marcellus kills everyone who gives Mia a footmassage.

   ```prolog
   willBeKilled(marcellus, Entity) :- footmassage(Entity, mia).
   ```

5. Mia loves everyone who is a good dancer.

   ```prolog
   love(X, mia) :- goodDancer(X).
   ```

6. Jules eats anything that is nutritious or tasty

   ```prolog
   isEdible(jules, X) :- nutritious(X); tasty(X).
   ```