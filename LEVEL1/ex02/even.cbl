      ******************************************************************
      * Name : even.cbl
      * Author: RayanPonsolle
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. even.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NB1 PIC 99.
       01 RESULT PIC 99.
       PROCEDURE DIVISION.
       MAIN.
           ACCEPT NB1.
           COMPUTE RESULT = FUNCTION MOD(NB1, 2).
           IF RESULT = 0 THEN
               DISPLAY "EVEN"
           ELSE
               DISPLAY "ODD"
           END-IF.
           STOP RUN.
