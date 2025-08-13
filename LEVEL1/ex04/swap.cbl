      ******************************************************************
      * Name : swap.cbl
      * Author: RayanPonsolle
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. swap-pgm.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NB1 PIC 9(2) VALUE 2.
       01 NB2 PIC 9(2) VALUE 4.
       01 TEMP PIC 9(2).
       PROCEDURE DIVISION.
       MAIN.
           MOVE NB2 TO TEMP.
           MOVE NB1 TO NB2.
           MOVE TEMP TO NB1.
           DISPLAY NB1.
           DISPLAY NB2.
           STOP RUN.
