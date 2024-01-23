```prolog
% The *listing* command is a special in-built Prolog predicate that instructs Prolog 
% to display the contents of the current knowledge base.
?- listing.
%*text ... loaded libraries ... etc. ...*
true.

% Changing working directory...
?- working_directory(X, 'D:\\Programming\\Prolog\\Learn-Prolog-Now\\01-Facts-Rules-Queries\\01-Some-Simple-Examples\\05-Knowledge-Base-5').
% X -- Previous working directory 
X = 'c:/users/alex/documents/prolog/'.

% Loading file "module", that contains Knowledge Base 5
?- [module].
true.

% Must be false, there's no fact like that
?- loves(alex, mia).
false.

% Must be true, there's fact like that
?- loves(vincent, mia).
true.
```