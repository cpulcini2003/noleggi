### NOLEGGIO AMICO

## INIZIALIZZAZIONE DEL DATABASE

# CREAZIONE DEL DATABASE

pcarlo@DLJ473C2T5 noleggi % /Applications/Postgres.app/Contents/Versions/15/bin/psql
psql (15.3)
Type "help" for help.

pcarlo=# <<<<OCCHIO SEMPRE AL PROMT CHE DEVE FINIRE CON =#>>>>
pcarlo=# \l
                                                 List of databases
   Name    |  Owner   | Encoding |   Collate   |    Ctype    | ICU Locale | Locale Provider |   Access privileges   
-----------+----------+----------+-------------+-------------+------------+-----------------+-----------------------
 pcarlo    | pcarlo   | UTF8     | en_US.UTF-8 | en_US.UTF-8 | en-US      | icu             | 
 postgres  | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | en-US      | icu             | 
 template0 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | en-US      | icu             | =c/postgres          +
           |          |          |             |             |            |                 | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | en-US      | icu             | =c/postgres          +
           |          |          |             |             |            |                 | postgres=CTc/postgres
(4 rows)

pcarlo=# create database noleggi;
CREATE DATABASE
pcarlo=# \l
                                                 List of databases
   Name    |  Owner   | Encoding |   Collate   |    Ctype    | ICU Locale | Locale Provider |   Access privileges   
-----------+----------+----------+-------------+-------------+------------+-----------------+-----------------------
 noleggi   | pcarlo   | UTF8     | en_US.UTF-8 | en_US.UTF-8 | en-US      | icu             | 
 pcarlo    | pcarlo   | UTF8     | en_US.UTF-8 | en_US.UTF-8 | en-US      | icu             | 
 postgres  | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | en-US      | icu             | 
 template0 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | en-US      | icu             | =c/postgres          +
           |          |          |             |             |            |                 | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | en-US      | icu             | =c/postgres          +
           |          |          |             |             |            |                 | postgres=CTc/postgres
(5 rows)

pcarlo=# 

# CREAZIONE TABELLE ED INSERIMENTO DATI TRAMITE SCRIPT SQL

pcarlo=# \q
pcarlo@DLJ473C2T5 noleggi % /Applications/Postgres.app/Contents/Versions/15/bin/psql -a -f initDB.sql

....
OMISSIS
INSERT 0 1
INSERT INTO NOLEGGI(EMAIL_CLIENTE, TARGA, DATA_INIZIO, DATA_FINE_PREVISTA, DATA_FINE_EFFETTIVA, PATENTE, DURATA, ID_TARIFFA) VALUES ('info@datageneral.com', 'CD 123 KK', '2021-06-18', '2021-06-28', '2021-06-28', 'PTN33', '10', 'BREVE');
INSERT 0 1
INSERT INTO NOLEGGI(EMAIL_CLIENTE, TARGA, DATA_INIZIO, DATA_FINE_PREVISTA, DATA_FINE_EFFETTIVA, PATENTE, DURATA, ID_TARIFFA) VALUES ('info@lucent.it', 'CD 123 KK', '2023-10-10', '2024-10-10', '1900-01-00', 'PTN44', '13', 'LUNGO');
INSERT 0 1

pcarlo@DLJ473C2T5 noleggi % /Applications/Postgres.app/Contents/Versions/15/bin/psql -U pcarlo -d noleggi
psql (15.3)
Type "help" for help.

noleggi=# \dt
           List of relations
 Schema |     Name     | Type  | Owner  
--------+--------------+-------+--------
 public | aziende      | table | pcarlo
 public | fedelta      | table | pcarlo
 public | manutenzioni | table | pcarlo
 public | noleggi      | table | pcarlo
 public | privati      | table | pcarlo
 public | tariffe      | table | pcarlo
 public | veicoli      | table | pcarlo
(7 rows)

noleggi=# select count(*) from veicoli;
 count 
-------
     5
(1 row)

noleggi=# select count(*) from manutenzioni;
 count 
-------
     9
(1 row)

noleggi=# select count(*) from privati;
select count(*) from aziende;
select count(*) from tari count 
-------
     3
(1 row)

noleggi=# select count(*) from aziende;
select count(*) from tariffe;
select count(*) from fedelta;
select count(*) count 
-------
     2
(1 row)

noleggi=# select count(*) from tariffe;
 count 
-------
    12
(1 row)

noleggi=# select count(*) from fedelta;
 count 
-------
     3
(1 row)

noleggi=# select count(*) from noleggi;
 count 
-------
     5
(1 row)

noleggi=# \q
pcarlo@DLJ473C2T5 noleggi %


## INIZIALIZZAZINE VSCODE

pcarlo@DLJ473C2T5 noleggi % /Applications/Postgres.app/Contents/Versions/15/bin/psql -U pcarlo -d noleggi

impostare la passowrd per utente pcarlo e db noleggi

ALTER USER pcarlo WITH PASSWORD 'password!';
.....




seguire video su https://www.youtube.com/watch?v=cc-cSSsGqbA



## TEST QUERY DA VSCODE

select * FROM manutenzioni;

