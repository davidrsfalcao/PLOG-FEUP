
% -----------------------------------------------------------------------
% Main Menu
% -----------------------------------------------------------------------


mainMenu:-nl,nl,
write(' ______________________________________________________________________________ '),nl,
write('|                                                                              |'),nl,
write('|                                                                              |'),nl,
write('|                     ______               ______    _____   _    _            |'),nl,
write('|              \\     |___   |      \\      |   ___|  |  _  | | |  | |           |'),nl,
write('|             _ \\       /  /      _ \\     |  |      |   __| | |  | |           |'),nl,
write('|            ___ \\    /   /_     ___ \\    |  |___   | || \\  | |__| |           |'),nl,
write('|          _/    _\\  |______|  _/    _\\   |______|  |_||__\\ |______|           |'),nl,
write('|                                                                              |'),nl,
write('|                                                                              |'),nl,
write('|                                                                              |'),nl,
write('|                              1 - Player vs Player                            |'),nl,
write('|                              2 - Player vs CPU                               |'),nl,
write('|                              3 - CPU vs CPU                                  |'),nl,
write('|                              4 - How To Play                                 |'),nl,
write('|                              5 - Exit Game                                   |'),nl,
write('|                                                                              |'),nl,
write('|                                                                              |'),nl,
write('|______________________________________________________________________________|'),nl,
nl,nl,
write('Please choose an option: '),
read(R),R1 is R,R1<6,menu(R1).



% -----------------------------------------------------------------------
% Menu 1 - PLAYER(BLACK) VS PLAYER(WHITE)
% -----------------------------------------------------------------------

menu(X):-
    X==1,
    nl,
    write(' PLAYER(WHITE) VS PLAYER(BLACK) '),
    nl
    assert(player(1,'HUMAN')),
    assert(player(2,'HUMAN')).


% -----------------------------------------------------------------------
% Menu 2 - PLAYER(BLACK) VS CPU(WHITE)
% -----------------------------------------------------------------------

menu(X):-X==2,nl,
write(' PLAYER(WHITE) VS CPU(BLACK) '),nl,nl.
% -----------------------------------------------------------------------
% MENU 3 - CPU(BLACK) VS CPU(WHITE)
% -----------------------------------------------------------------------

menu(X):-X==3,nl,
write(' CPU(WHITE) VS CPU(BLACK) '),nl,nl.

% -----------------------------------------------------------------------
% MENU 4 - HOW TO PLAY
% -----------------------------------------------------------------------

menu(X):-
    X==4,
clearScreen,
write(' ______________________________________________________________________________ '),nl,
write('|                                HOW TO PLAY                                   |'),nl,
write('|                                                                              |'),nl,
write('|                                                                              |'),nl,
write('|                                                                              |'),nl,
write('|  Get more pieces of your color all over the board to win.                    |'),nl,
write('|  Choose which piece you want to move and where to move it.                   |'),nl,
write('|  Everytime you "eat" an opponent piece your arrow will disappear.            |'),nl,
write('|  When one of the players have no more pieces,the other can only make one     |'),nl,
write('| more round.                                                                  |'),nl,
write('|  You can move the number of tiles you have in the quadrant you are in.       |'),nl,
write('|                                                                              |'),nl,
write('|                                                                              |'),nl,
write('|                                                                              |'),nl,
write('| 1 - return                                                                   |'),nl,
write('|                                                                              |'),nl,
write('|                                                                              |'),nl,
write('|______________________________________________________________________________|'),nl,
nl,nl,nl,

read(R), mainMenu.

% -----------------------------------------------------------------------
% Exit GAME
% -----------------------------------------------------------------------

menu(X):-X==5,fail.
