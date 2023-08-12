--creating a procedure to swap 2 numbers
CREATE OR REPLACE PROCEDURE InterChange
(p_n1 IN OUT NUMBER
,p_n2 IN OUT NUMBER)
IS
	v_temp NUMBER;
BEGIN
	v_temp := p_n1;
	p_n1 := p_n2;
	p_n2 := v_temp;
END;
/

--Declaring varibles
VARIABLE p_n1 NUMBER
VARIABLE p_n2 NUMBER

--Initialisiing variables by creating anonymous blocks
BEGIN
  :p_n1 := 10;
  :p_n2 := 20;
END;

--printing input values:
PRINT p_n1; --10
PRINT p_n2; --20

--executing the procedure
EXECUTE InterChange(:p_n1, :p_n2);

printing output values:
PRINT p_n1; --20
PRINT p_n2; --10
