CREATE TABLE Student(id INT, marks INT);
INSERT INTO Student VALUES (1,57),(2,87),(3,93),(4,78),(5,34);
DECLARE 
  st_grade VARCHAR2(1);
  max_marks NUMBER := 0;
  avg_marks NUMBER := 0;
  st_total NUMBER;
BEGIN 
  SELECT COUNT(*) INTO st_total FROM Student;
  DBMS_OUTPUT.PUT_LINE('Total Number of Students : ' || st_total);
  FOR st IN (SELECT * FROM Student) LOOP
    
    IF st.marks >= 90 THEN
      st_grade := 'A';
    ELSIF st.marks >= 80 THEN
      st_grade := 'B';
    ELSIF st.marks >= 70 THEN
      st_grade := 'C';
    ELSIF st.marks >= 60 THEN
      st_grade := 'D';
    ELSIF st.marks >= 50 THEN
      st_grade := 'E';
    ELSE
      st_grade := 'F';
    END IF;
    
    IF st.marks > max_marks THEN
      max_marks := st.marks;
    END IF;  
    
    avg_marks := avg_marks + (st.marks)/st_total;
    
    DBMS_OUTPUT.PUT_LINE('ID : ' || st.id || ' Marks : ' || st.marks || ' Grade : ' || st_grade); 
    
  END LOOP;
  
  DBMS_OUTPUT.PUT_LINE('MAX Marks : ' || max_marks);
  -- SELECT MAX(marks) INTO max_marks FROM Student;
  -- DBMS_OUTPUT.PUT_LINE('MAX Marks : ' || max_marks);
  DBMS_OUTPUT.PUT_LINE('AVG Marks : ' || avg_marks);
  -- SELECT AVG(marks) INTO avg_marks FROM Student;
  -- DBMS_OUTPUT.PUT_LINE('AVG Marks : ' || avg_marks);
END;
/
