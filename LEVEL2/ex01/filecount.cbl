      ******************************************************************
      * Name : filecount.cbl
      * Author: RayanPonsolle
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. filecount.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT DATA_FILE ASSIGN TO "data.txt"
           ORGANISATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD DATA_FILE.
       01 FLINES PIC X(100).


       WORKING-STORAGE SECTION.
       01 FILE-END PIC 9 VALUE 1.
       01 LINESCOUNT PIC 9(4).
       PROCEDURE DIVISION.
       MAIN.
           OPEN INPUT DATA_FILE.

           PERFORM UNTIL FILE-END = 0
               READ DATA_FILE
                   AT END
                       MOVE 0 TO FILE-END
                   NOT AT END
                       ADD 1 TO LINESCOUNT
               END-READ
           END-PERFORM.
           CLOSE DATA_FILE.
           DISPLAY LINESCOUNT.
           STOP RUN.
