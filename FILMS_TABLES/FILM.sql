CREATE TABLE FILMS
(
ID_ NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
NAME_ VARCHAR(50),
TIME_ TIMESTAMP,
IMBD_SCORE NUMBER(1,3),
TICKET_PRICE NUMBER(1,3),
YEARS NUMBER,
MONTHS NUMBER,
FILM_TYPES_ID NUMBER,
COMPANY_ID NUMBER,
DIRECTOR_ID NUMBER,
VISION_ID NUMBER,
ACTORS_ID NUMBER,


CONSTRAINT FK_TYPES FOREIGN KEY (FILM_TYPES_ID) REFERENCES FILM_TYPES(ID_)ON DELETE CASCADE,
CONSTRAINT FK_COMPANY FOREIGN KEY (COMPANY_ID) REFERENCES PRODUCTION_COMPANY(ID_)ON DELETE CASCADE,
CONSTRAINT FK_DIRECTOR FOREIGN KEY (DIRECTOR_ID) REFERENCES DIRECTORS(ID_)ON DELETE CASCADE,
CONSTRAINT FK_VISION FOREIGN KEY (VISION_ID) REFERENCES VISION_DATE(ID_)ON DELETE CASCADE,
CONSTRAINT FK_ACTORSS FOREIGN KEY (ACTORS_ID) REFERENCES FILM_ACTORS(ID_)ON DELETE CASCADE
);


