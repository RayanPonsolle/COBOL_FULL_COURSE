      ******************************************************************
      * Name : main.cbl
      * Author: RayanPonsolle
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ex01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  I PIC 9(4).
       01  R1 PIC 9(4).
       01  R2 PIC 9(4).
       01  RESULT PIC 9(6).
       PROCEDURE DIVISION.
       MAIN.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I = 1000
               COMPUTE R1 = FUNCTION MOD(I, 3)
               COMPUTE R2 = FUNCTION MOD(I, 5)
               IF R1 = 0 OR R2 = 0
               COMPUTE RESULT = RESULT + I
               END-IF
               END-PERFORM.
           DISPLAY RESULT.
           STOP RUN.
