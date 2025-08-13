      ******************************************************************
      * Name : FileWrite.cbl
      * Author: RayanPonsolle
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. filecount.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT DATA_FILE ASSIGN TO "data.txt"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  DATA_FILE.
       01  FILE_DATA.
           05 NOM PIC A(20).
           05 AGE PIC 99.
           05 VILLE PIC A(20).



       WORKING-STORAGE SECTION.
       01  REPONSE PIC X.
       01  FINAL_DATA PIC X(100).
       PROCEDURE DIVISION.
       MAIN.
           OPEN OUTPUT DATA_FILE.

           PERFORM UNTIL REPONSE = "N" OR REPONSE = "n"
               DISPLAY "Entrez le nom : "
               ACCEPT NOM
               DISPLAY "Entrez l'age : "
               ACCEPT AGE
               DISPLAY "Entrez la ville : "
               ACCEPT VILLE

               WRITE FILE_DATA

               DISPLAY "Autre enregistrement ? (O/N)"

               ACCEPT REPONSE
           END-PERFORM.

           CLOSE DATA_FILE.
           STOP RUN.
