      ******************************************************************
      * Name : fibo.cbl
      * Author: RayanPonsolle
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. fibo.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC 9(4) VALUE 2.
       01  B PIC 9(4) VALUE 8.
       01  TEMP PIC 9(10) VALUE 0.
       01  LIMIT1 PIC 9(10) VALUE 100.
       01  RESULT PIC 9(10) VALUE 0.
       PROCEDURE DIVISION.
       MAIN.
           PERFORM UNTIL TEMP > LIMIT1
               COMPUTE TEMP = 4 * A + B
               IF TEMP <= LIMIT1
                   COMPUTE RESULT = RESULT + TEMP
                   MOVE B TO A
                   MOVE TEMP TO B
               END-IF
               END-PERFORM.
           DISPLAY RESULT.
           STOP RUN.
