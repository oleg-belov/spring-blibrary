DROP TABLE IF EXISTS book_author;
DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS author;
DROP TABLE IF EXISTS book_category;

------ Cteate Table for books category --------
CREATE TABLE book_category (
	category_id integer PRIMARY KEY,
	category_name varchar(20) NOT NULL
)

WITH (
  OIDS=FALSE
);

ALTER TABLE public.book_category
  OWNER TO blibrary;
------ Insert into book category table --------
INSERT INTO book_category (category_id, category_name)
VALUES (1, 'Core');

INSERT INTO book_category (category_id, category_name)
VALUES (2, 'Generics');

INSERT INTO book_category (category_id, category_name)
VALUES (3, 'Web - services');

INSERT INTO book_category (category_id, category_name)
VALUES (4, 'Servlets, Jsp, Jstl');

INSERT INTO book_category (category_id, category_name)
VALUES (5, 'Jsf');

INSERT INTO book_category (category_id, category_name)
VALUES (6, 'Jaas');

INSERT INTO book_category (category_id, category_name)
VALUES (7, 'Spring framework');

INSERT INTO book_category (category_id, category_name)
VALUES (8, 'Jdbc');

INSERT INTO book_category (category_id, category_name)
VALUES (9, 'Log4j');

INSERT INTO book_category (category_id, category_name)
VALUES (10, 'JUnit');

INSERT INTO book_category (category_id, category_name)
VALUES (11, 'Concurrensy');

INSERT INTO book_category (category_id, category_name)
VALUES (12, 'EJB');

INSERT INTO book_category (category_id, category_name)
VALUES (13, 'Hibernate, Jpa');

INSERT INTO book_category (category_id, category_name)
VALUES (14, 'JavaFx');

INSERT INTO book_category (category_id, category_name)
VALUES (15, 'Swing');

INSERT INTO book_category (category_id, category_name)
VALUES (16, 'Postgre SQL');

INSERT INTO book_category (category_id, category_name)
VALUES (17, 'MySQL');

INSERT INTO book_category (category_id, category_name)
VALUES (18, 'Oracle DB');

INSERT INTO book_category (category_id, category_name)
VALUES (19, 'Microsoft SQL');

INSERT INTO book_category (category_id, category_name)
VALUES (20, 'DB2');

INSERT INTO book_category (category_id, category_name)
VALUES (21, 'HTML');

INSERT INTO book_category (category_id, category_name)
VALUES (22, 'Css');

INSERT INTO book_category (category_id, category_name)
VALUES (23, 'JavaScript');

------ Cteate Table for authors --------
CREATE TABLE author (
	author_id SERIAL PRIMARY KEY,
	author_img bytea,
	author_name varchar(30) NOT NULL,
	author_date_of_birth date 
)

WITH (
  OIDS=FALSE
);
ALTER TABLE public.author
  OWNER TO blibrary;
  
------ Insert into author table --------
INSERT INTO author (author_name, author_date_of_birth)
VALUES ('Ãåðáåðò Øèëäò', '23/2/1951');

INSERT INTO author (author_name)
VALUES ('Êåé Õîðñòìàíí');

INSERT INTO author (author_name)
VALUES ('Ãàðè Êîðíåëë');

------ Cteate table for book --------
CREATE TABLE book (
	book_id SERIAL PRIMARY KEY,
	book_name varchar(100) NOT NULL,
	book_descr text,
	book_pages int ,
	book_img bytea,
	book_date int ,
	book_language varchar(10),
	category_id int NOT NULL,
	book_tupe varchar(5),
	book_pdf bytea		
)

WITH (
  OIDS=FALSE
);
ALTER TABLE public.book
  OWNER TO blibrary;

------ Add foreign key constraint for book table references  book_category--------
ALTER TABLE book ADD CONSTRAINT book_category_id_fk FOREIGN KEY (category_id) REFERENCES book_category (category_id);

------ Insert into book table --------
INSERT INTO book (book_name, book_descr, book_pages, book_date, book_language, category_id,
	book_tupe)
	
VALUES ('Java 8. Ïîëíîå ðóêîâîäñòâî', 
'Êíèãà Java 8. Ïîëíîå ðóêîâîäñòâî ÿâëÿåòñÿ èñ÷åðïûâàþùèì 		ðóêîâîäñòâîì ïî ïðîãðàììèðîâàíèþ íà ÿçûêå Java.  Â ýòîì ñïðàâî÷íîì ïîñîáèè, ïîëíîñòüþ îáíîâëåííîì ñ ó÷åòîì ïîñëåäíåé âåðñèè Java SE 8, ïîÿñíÿåòñÿ, êàê ðàçðàáàòûâàòü, êîìïèëèðîâàòü, îòëàæèâàòü è âûïîëíÿòü ïðîãðàììû íà ÿçûêå ïðîãðàììèðîâàíèÿ Java. Êíèãà íàïèñàíà Ãåðáåðòîì Øèëäòîì, àâòîðîì ïîïóëÿðíûõ âî âñåì ìèðå êíèã ïî ÿçûêàì ïðîãðàììèðîâàíèÿ, òàêèì îáðàçîì, ÷òîáû îõâàòèòü âñå ÿçûêîâûå ñðåäñòâà Java, âêëþ÷àÿ ñèíòàêñèñ, êëþ÷åâûå ñëîâà, îñíîâíûå ïðèíöèïû îáúåêòíî-îðèåíòèðîâàííîãî ïðîãðàììèðîâàíèÿ, çíà÷èòåëüíóþ ÷àñòü ïðèêëàäíîãî ïðîãðàììíîãî èíòåðôåéñà Java API, áèáëèîòåêè êëàññîâ, àïëåòû è ñåðâëåòû, êîìïîíåíòû JavaBeans, áèáëèîòåêè AWT è Swing, à òàêæå ïðîäåìîíñòðèðîâàòü èõ ïðèìåíåíèå íà ïðîñòûõ è íàãëÿäíûõ ïðèìåðàõ. Â êíèãå «Java 8. Ïîëíîå ðóêîâîäñòâî» íå îáîéäåíû âíèìàíèåì è íîâûå ñðåäñòâà, ïîÿâèâøèåñÿ â âåðñèè Java SE 8, â òîì ÷èñëå ëÿìáäà-âûðàæåíèÿ, ñòàíäàðòíûå èíòåðôåéñíûå ìåòîäû, áèáëèîòåêà ïîòîêîâ ââîäà-âûâîäà, à òàêæå òåõíîëîãèÿ JavaFX.', 
1377, 2015, 'Ðóññêèé', 1, 'pdf');

INSERT INTO book (book_name, book_descr, book_pages, book_date, book_language, category_id,
	book_tupe)
	
VALUES ('Java. Áèáëèîòåêà ïðîôåññèîíàëà, òîì 1. Îñíîâû. 9-å èçäàíèå', 
'Ýòî ïîëíîñòüþ îáíîâëåííîå ñ ó÷åòîì âåðñèè Java SE 7 èçäàíèå ïðåäñòàâëÿåò ñîáîé ñîëèäíîå ñïðàâî÷íîå ðóêîâîäñòâî ïî ÿçûêó ïðîãðàììèðîâàíèÿ Java äëÿ òåõ, êòî ðàçðàáàòûâàåò íàñòîÿùèå ïðîåêòû íà ïëàòôîðìå Java.<br> Â ýòîì íàäåæíîì è ïîëåçíîì ïðàêòè÷åñêîì ðóêîâîäñòâå îïèñàíû âàæíûå ÿçûêîâûå ñðåäñòâà è áèáëèîòåêè, ïðîèëëþñòðèðîâàííûå òùàòåëüíî ïîäîáðàííûìè è ïðîâåðåííûìè ïðèìåðàìè èç ïðàêòèêè ïðîãðàììèðîâàíèÿ íà Java. Ïðèâåäåííûå ïðèìåðû ïðîñòû äëÿ ïîíèìàíèÿ è ïðàêòè÷åñêè ïîëåçíû è ïîñëóæàò íåïëîõîé îòïðàâíîé òî÷êîé äëÿ íàïèñàíèÿ ñîáñòâåííîãî êîäà.', 
855,2014, 'Ðóññêèé', 1, 'pdf');

INSERT INTO book (book_name, book_descr, book_pages, book_date, book_language, category_id,
	book_tupe)
	
VALUES ('Java. Áèáëèîòåêà ïðîôåññèîíàëà, òîì 2. Ðàñøèðåííûå ñðåäñòâà ïðîãðàììèðîâàíèÿ, 9-å èçäàíèå', 
'Ýòî ïîëíîñòüþ îáíîâëåííîå ñ ó÷åòîì âåðñèè Java SE 7 èçäàíèå ïðåäñòàâëÿåò ñîáîé ñîëèäíîå ñïðàâî÷íîå ðóêîâîäñòâî ïî ÿçûêó ïðîãðàììèðîâàíèÿ Java äëÿ òåõ, êòî ðàçðàáàòûâàåò íàñòîÿùèå ïðîåêòû íà ïëàòôîðìå Java.<br> Â ýòîì íàäåæíîì è ïîëåçíîì ïðàêòè÷åñêîì ðóêîâîäñòâå îïèñàíû âàæíûå ÿçûêîâûå ñðåäñòâà è áèáëèîòåêè, ïðîèëëþñòðèðîâàííûå òùàòåëüíî ïîäîáðàííûìè è ïðîâåðåííûìè ïðèìåðàìè èç ïðàêòèêè ïðîãðàììèðîâàíèÿ íà Java. Ïðèâåäåííûå ïðèìåðû ïðîñòû äëÿ ïîíèìàíèÿ è ïðàêòè÷åñêè ïîëåçíû è ïîñëóæàò íåïëîõîé îòïðàâíîé òî÷êîé äëÿ íàïèñàíèÿ ñîáñòâåííîãî êîäà.', 
993, 2014, 'Ðóññêèé', 1, 'pdf');

------ Cteate table to link authors and books --------
CREATE TABLE book_author (
	book_id int,
	author_id int	
)

WITH (
  OIDS=FALSE
);
ALTER TABLE public.book_author
  OWNER TO blibrary;
  
------ Add foreign key constraint for book_author table references  book --------
------ Add foreign key constraint for book_author table references  author --------
ALTER TABLE book_author ADD CONSTRAINT book_author_book_id_fk FOREIGN KEY (book_id) REFERENCES book (book_id);
ALTER TABLE book_author ADD CONSTRAINT book_author_author_id_fk FOREIGN KEY (author_id) REFERENCES author (author_id);

------ Insert into book_author table --------
INSERT INTO book_author (book_id, author_id)
VALUES (1, 1);

INSERT INTO book_author (book_id, author_id)
VALUES (2, 2);

INSERT INTO book_author (book_id, author_id)
VALUES (2, 3);

INSERT INTO book_author (book_id, author_id)
VALUES (3, 2);

INSERT INTO book_author (book_id, author_id)
VALUES (3, 3);