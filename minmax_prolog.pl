% Nate McCain
% 04/25/2017
% CS 424, Section 2 (Tuesday/Thursday)
% This program calculates the minimum and maximum values
% of a list. An example call to this function is:
% minmax([1,2,3,4,5],Result).
% This would yield “Result = [1,5]”

minmax([Item],[Item,Item]).
minmax([Item1,Item2],[Min,Max]):-
    Item1 =< Item2,
    Min is Item1,
    Max is Item2.
minmax([Head|Tail],[Min,Max]):-
    minmax(Tail,[TailMin,TailMax]),
    Head =< TailMin,
    Head < TailMax,
    Min is Head,
    Max is TailMax.
minmax([Head|Tail],[Min,Max]):-
    minmax(Tail,[TailMin,TailMax]),
    Head > TailMin,
    Head >= TailMax,
    Min is TailMin,
    Max is Head.
minmax([Head|Tail],[Min,Max]):-
    minmax(Tail,[TailMin,TailMax]),
    Head >= TailMin,
    Head =< TailMax,
    Min is TailMin,
    Max is TailMax.