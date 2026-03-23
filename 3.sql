DECLARE 
v_emp HR.EMPLOYEES %ROWTYPE;
BEGIN
    v_emp.FIRST_NAME := 'ABC';
    v_emp.Salary := 3100;
    DBMS_OUTPUT.PUT_LINE('Employee Name : ' || v_emp.FIRST_NAME);
END;
/