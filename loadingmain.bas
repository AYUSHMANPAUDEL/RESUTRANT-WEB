DECLARE SUB Multiplayer (x)
DECLARE SUB Computer (y)
CLS
topg:
PRINT "---------TIC TAC TOE-----------"
PRINT "1)Play With Friends (multiplayer)"
PRINT "2)Play with computer(easy level)"
PRINT "3)exit"
INPUT "what you want to do?"; x
SELECT CASE x
CASE 1
CALL Multiplayer(x)
CLS
GOTO topg
CASE 2
CALL Computer(y)
CLS
GOTO topg
CASE 3
	GOTO last
CASE ELSE
PRINT "INVALID COMMAND"
GOTO topg
END SELECT
last:
END

SUB Computer (y)
DIM choiced(9)
DIM userchoice
DIM player1(9)
DIM play2(9)
CLS
SCREEN 12
LINE (100, 200)-(400, 200)
LINE (100, 300)-(400, 300)
LINE (200, 100)-(200, 400)
LINE (300, 100)-(300, 400)
LINE (500, 50)-(625, 50)
LOCATE 3, 66
PRINT "1"
LOCATE 3, 71
PRINT "2"
LOCATE 3, 76
PRINT "3"
LINE (500, 100)-(625, 100)
LOCATE 5.3, 66
PRINT "4"
LOCATE 5.3, 71
PRINT "5"
LOCATE 5.3, 76
PRINT "6"
LOCATE 8.3, 66
PRINT "7"
LOCATE 8.3, 71
PRINT "8"
LOCATE 8.3, 76
PRINT "9"
LINE (539, 15)-(539, 135)
LINE (589, 15)-(589, 135)
LOCATE 1, 1
PRINT "Enter your choice from 1 to 9. Press 0 to exit "
main1:
DO
	LOCATE 5, 1
	INPUT "enter your choice player 1"; userchoice
	IF userchoice < 0 OR userchoice > 9 THEN
	PRINT "INVALID INPUT . ALready mentioned enter your choice from 1 to 9."
	ELSEIF userchoice = 0 THEN
	END
	ELSEIF choiced(userchoice) THEN
	PRINT "ALREADY TAKEN NUMBER"
	ELSEIF userchoice = player2 THEN
	PRINT "ALREADY ENTERED NUMBER"
	ELSE
	choiced(userchoice) = -1
	player1(userchoice) = 1
	GOTO here1
	END IF
       
LOOP
  LOCATE 22, 55
  PRINT "YOU CHOOSED"; userchoice
here1:
SELECT CASE userchoice
CASE 1
LOCATE 12, 20
PRINT "X"
CASE 2
LOCATE 12, 30
PRINT "X"
CASE 3
LOCATE 12, 40
PRINT "X"
CASE 4
LOCATE 17, 20
PRINT "X"
CASE 5
LOCATE 17, 30
PRINT "X"
CASE 6
LOCATE 17, 43
PRINT "X"
CASE 7
LOCATE 22, 20
PRINT "X"
CASE 8
LOCATE 22, 30
PRINT "X"
CASE 9
LOCATE 22, 40
PRINT "X"
END SELECT
GOTO win11
win11:
IF (player1(1) = 1 AND player1(2) = 1 AND player1(3) = 1) OR (player1(4) = 1 AND player1(5) = 1 AND player1(6) = 1) OR (player1(7) = 1 AND player1(8) = 1 AND player1(9) = 1) OR (player1(1) = 1 AND player1(4) = 1 AND player1(7) = 1) OR (player1(2) = 1 AND player1(5) = 1 AND player1(8) = 1) OR (player1(3) = 1 AND player1(6) = 1 AND player1(9) = 1) OR (player1(1) = 1 AND player1(5) = 1 AND player1(9) = 1) OR (player1(3) = 1 AND player1(5) = 1 AND player1(7) = 1) THEN
   LOCATE 4, 27
   PRINT "Player 1 wins"
   END
   ELSEIF (choiced(1) = -1 AND choiced(2) = -1 AND choiced(3) = -1 AND choiced(4) = -1 AND choiced(5) = -1 AND choiced(6) = -1 AND choiced(7) = -1 AND choiced(8) = -1 AND choiced(9) = -1) THEN
   LOCATE 28, 32
   PRINT "GAME TIED"
   END
  ELSE
  GOTO check11
END IF
check11:
DO
   LOCATE 5, 40
	RANDOMIZE TIMER
	player2 = INT(RND * 9) + 1
	IF player2 < 0 OR player2 > 9 THEN
	PRINT "INVALID INPUT . ALre7ady mentioned enter your choice from 1 to 9."
	ELSEIF player2 = 0 THEN
	GOTO last1
	ELSEIF choiced(player2) THEN
	GOTO check11
	ELSEIF player2 = userchoice THEN
	GOTO check11
	ELSE
	choiced(player2) = -1
	play2(player2) = -1
	GOTO player222
	END IF
LOOP
player222:
SELECT CASE player2
CASE 1
LOCATE 12, 20
PRINT "O"
CASE 2
LOCATE 12, 30
PRINT "O"
CASE 3
LOCATE 12, 40
PRINT "O"
CASE 4
LOCATE 17, 20
PRINT "O"
CASE 5
LOCATE 17, 30
PRINT "O"
CASE 6
LOCATE 17, 43
PRINT "O"
CASE 7
LOCATE 22, 20
PRINT "O"
CASE 8
LOCATE 22, 30
PRINT "O"
CASE 9
LOCATE 22, 40
PRINT "0"
END SELECT
GOTO win111


win111:
IF (play2(1) AND play2(2) AND play2(3)) OR (play2(4) AND play2(5) AND play2(6)) OR (play2(7) AND play2(8) AND play2(9)) OR (play2(1) AND play2(4) AND play2(7)) OR (play2(2) AND play2(5) AND play2(8)) OR (play2(3) AND play2(6) AND play2(9)) OR (play2(1) AND play2(5) AND play2(9)) OR (play2(3) AND play2(5) AND play2(7)) THEN


   LOCATE 4, 27
   PRINT "PLAYER 2 WINS!"
   GOTO last1
   ELSEIF choiced(1) AND choiced(2) AND choiced(3) AND choiced(4) AND choiced(5) AND choiced(6) AND choiced(7) AND choiced(8) AND choiced(9) THEN
   LOCATE 28, 12
   PRINT "GAME TIED"
   GOTO last1
ELSE
   GOTO main1
END IF
last1:
END SUB

SUB Multiplayer (x)
DIM choiced(9)
DIM userchoice
DIM player1(9)
DIM play2(9)
CLS
SCREEN 12
LINE (100, 200)-(400, 200)
LINE (100, 300)-(400, 300)
LINE (200, 100)-(200, 400)
LINE (300, 100)-(300, 400)
LINE (500, 50)-(625, 50)
LOCATE 3, 66
PRINT "1"
LOCATE 3, 71
PRINT "2"
LOCATE 3, 76
PRINT "3"
LINE (500, 100)-(625, 100)
LOCATE 5.3, 66
PRINT "4"
LOCATE 5.3, 71
PRINT "5"
LOCATE 5.3, 76
PRINT "6"
LOCATE 8.3, 66
PRINT "7"
LOCATE 8.3, 71
PRINT "8"
LOCATE 8.3, 76
PRINT "9"
LINE (539, 15)-(539, 135)
LINE (589, 15)-(589, 135)


LOCATE 1, 1
PRINT "Enter your choice from 1 to 9. Press 0 to exit "
main:
DO
	LOCATE 5, 1
	INPUT "enter your choice player 1"; userchoice
	IF userchoice < 0 OR userchoice > 9 THEN
	PRINT "INVALID INPUT . ALready mentioned enter your choice from 1 to 9."
	ELSEIF userchoice = 0 THEN
	END
	ELSEIF choiced(userchoice) THEN
	PRINT "ALREADY TAKEN NUMBER"
	ELSEIF userchoice = player2 THEN
	PRINT "ALREADY ENTERED NUMBER"
	ELSE
	choiced(userchoice) = -1
	player1(userchoice) = 1
	GOTO here
	END IF
       
LOOP
  LOCATE 22, 55
  PRINT "YOU CHOOSED"; userchoice
here:
SELECT CASE userchoice
CASE 1
LOCATE 12, 20
PRINT "X"
CASE 2
LOCATE 12, 30
PRINT "X"
CASE 3
LOCATE 12, 40
PRINT "X"
CASE 4
LOCATE 17, 20
PRINT "X"
CASE 5
LOCATE 17, 30
PRINT "X"
CASE 6
LOCATE 17, 40
PRINT "X"
CASE 7
LOCATE 22, 20
PRINT "X"
CASE 8
LOCATE 22, 30
PRINT "X"
CASE 9
LOCATE 22, 40
PRINT "X"
END SELECT
GOTO win1
win1:
IF (player1(1) = 1 AND player1(2) = 1 AND player1(3) = 1) OR (player1(4) = 1 AND player1(5) = 1 AND player1(6) = 1) OR (player1(7) = 1 AND player1(8) = 1 AND player1(9) = 1) OR (player1(1) = 1 AND player1(4) = 1 AND player1(7) = 1) OR (player1(2) = 1 AND player1(5) = 1 AND player1(8) = 1) OR (player1(3) = 1 AND player1(6) = 1 AND player1(9) = 1) OR (player1(1) = 1 AND player1(5) = 1 AND player1(9) = 1) OR (player1(3) = 1 AND player1(5) = 1 AND player1(7) = 1) THEN
   LOCATE 4, 27
   PRINT "Player 1 wins"
   GOTO last11
   ELSEIF (choiced(1) = -1 AND choiced(2) = -1 AND choiced(3) = -1 AND choiced(4) = -1 AND choiced(5) = -1 AND choiced(6) = -1 AND choiced(7) = -1 AND choiced(8) = -1 AND choiced(9) = -1) THEN
   LOCATE 28, 32
   PRINT "GAME TIED "
   GOTO last11
  ELSE
  GOTO check
END IF
check:
DO
   LOCATE 5, 35
	INPUT "enter CHOICE PLAYER 2"; player2
	IF player2 < 0 OR player2 > 9 THEN
	PRINT "INVALID INPUT . ALready mentioned enter your choice from 1 to 9."
	ELSEIF player2 = 0 THEN
	END
	ELSEIF choiced(player2) THEN
	PRINT "ALREADY TAKEN NUMBER"
	ELSEIF player2 = userchoice THEN
	PRINT "ALREADY ENTERED NUMBER"
	ELSE
	choiced(player2) = -1
	play2(player2) = -1
	GOTO player22
	END IF
LOOP
player22:
SELECT CASE player2
CASE 1
LOCATE 12, 20
PRINT "O"
CASE 2
LOCATE 12, 30
PRINT "O"
CASE 3
LOCATE 12, 40
PRINT "O"
CASE 4
LOCATE 17, 20
PRINT "O"
CASE 5
LOCATE 17, 30
PRINT "O"
CASE 6
LOCATE 17, 43
PRINT "O"
CASE 7
LOCATE 22, 20
PRINT "O"
CASE 8
LOCATE 22, 30
PRINT "O"
CASE 9
LOCATE 22, 40
PRINT "0"
END SELECT
GOTO win


win:
IF (play2(1) AND play2(2) AND play2(3)) OR (play2(4) AND play2(5) AND play2(6)) OR (play2(7) AND play2(8) AND play2(9)) OR (play2(1) AND play2(4) AND play2(7)) OR (play2(2) AND play2(5) AND play2(8)) OR (play2(3) AND play2(6) AND play2(9)) OR (play2(1) AND play2(5) AND play2(9)) OR (play2(3) AND play2(5) AND play2(7)) THEN
   LOCATE 4, 27
   PRINT "PLAYER 2 WINS!"
   GOTO last11
   ELSEIF choiced(1) AND choiced(2) AND choiced(3) AND choiced(4) AND choiced(5) AND choiced(6) AND choiced(7) AND choiced(8) AND choiced(9) THEN
   LOCATE 28, 12
   PRINT "GAME TIED"
   GOTO last11
ELSE
   GOTO main
END IF
last11:                                                                                                                                                                                                                                                                                                                             
om = 5
kaka = 1
FOR om = 5 TO 1 STEP -1
   LOCATE 3, 23
  PRINT "EXITING IN"; om
  kaka = kaka + 1
  SLEEP 1
NEXT om
IF kaka = 5 THEN
GOTO antim
END IF
antim:
END SUB

