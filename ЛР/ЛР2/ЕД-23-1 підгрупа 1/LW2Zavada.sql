<<<<<<< Updated upstream
﻿ USE [WebStor];GO
CREATE SCHEMA;

CREATE TABLE ZAVADA.DATATYPES (
 ID BIGINT, 
 AGE TINYINT );

INSERT INTO ZAVADA.DATATYPES(ID, AGE)
VALUES(10000, 34);
INSERT INTO ZAVADA.DATATYPES(ID, AGE)
VALUES(10001, 32);
INSERT INTO ZAVADA.DATATYPES(ID, AGE)
VALUES('10002', 32);
INSERT INTO ZAVADA.DATATYPES(ID, AGE)
VALUES('10003', '35');
INSERT INTO ZAVADA.DATATYPES(ID, AGE)
VALUES('19700101', '35');
INSERT INTO ZAVADA.DATATYPES(ID, AGE)
VALUES('1970-01-01', '35');

SELECT *
 FROM ZAVADA.DATATYPES;
=======
﻿USE WebStor;
CREATE SCHEMA BOJKO;
CREATE TABLE BOJKO.DATATYPES (ID BIGINT, AGE TINYINT );
INSERT INTO BOJKO.DATATYPES(ID, AGE)

VALUES(10000, 34);

INSERT INTO BOJKO.DATATYPES(ID, AGE)

VALUES(10001, 32);

INSERT INTO BOJKO.DATATYPES(ID, AGE)

VALUES('10002', 32);

INSERT INTO BOJKO.DATATYPES(ID, AGE)

VALUES('10003', '35');


INSERT INTO BOJKO.DATATYPES(ID, AGE)

VALUES('19700101', '35');


INSERT INTO BOJKO.DATATYPES(ID, AGE)
VALUES('1970-01-01', '35');
SELECT *

FROM BOJKO.DATATYPES;
>>>>>>> Stashed changes
