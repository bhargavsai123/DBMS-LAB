set serveroutput on
DECLARE 
message constant VARCHAR2(32767):= 'Hello, World';
BEGIN
    DBMS_OUTPUT.PUT_LINE(message);
END;
/