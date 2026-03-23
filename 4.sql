set serveroutput on

DECLARE
    V_HELLO VARCHAR(32767);
BEGIN
    SELECT
        'hello world'
    INTO V_HELLO
    FROM
        DUAL;

    DBMS_OUTPUT.PUT_LINE(V_HELLO);
END;