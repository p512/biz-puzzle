col(C) :- sc(C,_). % C is a column if there is a set constraint on the column
row(R) :- sr(R,_).
v(1..N,1..M) :- rc(N), cc(M). % There a vertex for each index in the respective row and column

% Generate
{ set(X,Y) : v(X,Y) }. % A vertex can be either set or not

% Helpers
countC(C, N) :- N = { set(X,C) : v(X,C) }, col(C). % The column count
countR(R, N) :- N = { set(R,X) : v(R,X) }, row(R). % The row count

% Kill
:- col(C), countC(C, N), sc(C, M), N != M.
:- row(R), countR(R, N), sr(R, M), N != M.

#show set/2.
