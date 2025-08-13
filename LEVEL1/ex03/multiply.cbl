      ******************************************************************
      * Name : multiply.cbl
      * Author: RayanPonsolle
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. multiply-pgm.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NB1 PIC 9(2).
       01 I PIC 9(2).
       01 RESULT PIC Z9(3).
       PROCEDURE DIVISION.
       MAIN.
           ACCEPT NB1.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I = 11
           COMPUTE RESULT = NB1 * I
           DISPLAY RESULT
           END-PERFORM.
           STOP RUN.
