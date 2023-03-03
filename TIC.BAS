DIM choiced(9)
DIM userchoice
CLS
SCREEN 12
LINE (100, 200)-(400, 200)
LINE (100, 300)-(400, 300)
LINE (200, 100)-(200, 400)
LINE (300, 100)-(300, 400)
PRINT "Enter your choice from 1 to 9. Press 0 to exit "
DO
        LOCATE 5, 5
        INPUT "enter your choice"; userchoice
        IF userchoice < 0 OR userchoice > 9 THEN
        PRINT "INVALID INPUT . ALready mentioned enter your choice from 1 to 9."
        ELSEIF userchoice = 0 THEN
        EXIT DO
        ELSEIF choiced(userchoice) THEN
        PRINT "ALREADY TAKEN NUMBER"
        ELSEIF userchoice = computernumber THEN
        PRINT "ALREADY ENTERED NUMBER"
        ELSE
        choiced(userchoice) = -1
        END IF
LOOP

DO
   RANDOMIZE number
   computernumber = INT(RND * 9) + 1
   IF choiced(computernumber) THEN
   computernumber = INT(RND * 9) + 1
   ELSE
   EXIT DO
   END IF
 LOOP

SELECT CASE userchoice
CASE 1
REM LOCATE 12, 20
PRINT "hari hari"
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









