DECLARE
	CURSOR exp_cur IS
	SELECT first_name FROM employees; TYPE
	nt_fName IS TABLE OF VARCHAR2(20);
	fname nt_fName;
BEGIN
	OPEN exp_cur;
	FETCH exp_cur BULK COLLECT INTO fname
LIMIT 10;
	CLOSE exp_cur;
	FOR idx IN 1 .. fname.COUNT
	LOOP
		DBMS_OUTPUT.PUT_LINE (idx||'
'||fname(idx) );
	END LOOP;
END;

-- va a traer solamente 10 registros porque:
-- LIMIT 10 y la interaccion FETCH que se limita a traer solo 10

-- Pero si deseamos traer todo los registros solamente tenemos que sacar el LIMIT

DECLARE
  CURSOR exp_cur IS
    SELECT first_name FROM employees;
	TYPE nt_fName IS TABLE OF VARCHAR2(20);
	fname nt_fName;
BEGIN
  OPEN exp_cur;
  FETCH exp_cur BULK COLLECT INTO fname;
  CLOSE exp_cur;
  
  FOR idx IN 1 .. fname.COUNT
  LOOP
    DBMS_OUTPUT.PUT_LINE (idx||' '||fname(idx));
  END LOOP;
END;
