      ******************************************************************
      * Name : Add.cbl
      * Author: RayanPonsolle
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Adding-pgm.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NB1 PIC 99.
       01 NB2 PIC 99.
       01 RESULT PIC 99.
       PROCEDURE DIVISION.
       MAIN.
           ACCEPT NB1.
           ACCEPT NB2.
           ADD NB1 TO NB2 GIVING RESULT.
           DISPLAY "RESULT WITH ADD : ", RESULT.
           COMPUTE RESULT = NB1 + NB2.
           DISPLAY "RESULT WITH COMPUTE : ", RESULT.
           STOP RUN.
