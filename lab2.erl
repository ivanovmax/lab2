-module(lab2).
-export([member/2, cost/1, fac1/1, fac2/1, fac3/1]).


fac1(N) ->
	if
		N =< 1 -> 1;
		true -> N * fac1(N-1)
	end.

fac2(N) ->
	case N of
		0 -> 1;
		1 -> 1;
		_Else -> N * fac2(N-1)
	end.

fac3(N) ->
	if
		N == 1 orelse N == 0 -> 1;
		true -> N * fac3(N-1)
	end.



member(L, E) ->
	case L of
		[E|_] -> true;
		[] -> false;
		[_|T] -> member(T, E)
	end.



price(apple) -> 100;
price(pear) -> 150;
price(milk) -> 70;
price(beaf) -> 400;
price(pork) -> 300.

cost(L) ->
	case L of
		[] -> 0;
		[{A,C}|T] -> price(A) * C + cost(T)
	end.

