VARIABLE  b_total_sal NUMBER;

DECLARE
    V_NAME  VARCHAR2(50);
    V_SAL   NUMBER;
    V_BONUS NUMBER := 1000;
    V_TOTAL NUMBER;
BEGIN
    V_NAME := '&emp_name';
    V_SAL := '&emp_sal';
    V_TOTAL := V_SAL + V_BONUS;
    :B_TOTAL_SAL := V_TOTAL;
    DBMS_OUTPUT.PUT_LINE('Employee Name :' || V_NAME);
    DBMS_OUTPUT.PUT_LINE('Employee Salary :' || V_SAL);
    DBMS_OUTPUT.PUT_LINE('Employee Total Salary: ' || V_TOTAL);
END;
/

PRINT b_total_sal