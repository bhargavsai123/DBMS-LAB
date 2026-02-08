SELECT CONCAT('My','SQL'); # Returns Concatenated String
SELECT CONCAT_WS('#','My','SQL','abc'); # Returns Concatenated String with Separator
SELECT LENGTH('LENGTH'); # Returns Length of String
SELECT CHAR_LENGTH('LENGTH123'); # Returns Number of Characters
SELECT UPPER('upper'); # Converts to UPPERCASE
SELECT LOWER('LOWER'); # Converts to lowercase
SELECT SUBSTRING('LENGTH123',1,6); # Return Substring
SELECT LEFT('LOWER',3); # Returns Left Characters
SELECT RIGHT('LOWER',3); # Returns Right Characters
SELECT TRIM('   abc    '); # Removes Spaces
SELECT REPLACE('I like SQL','SQL','MySQL'); # Replaces Part of String
SELECT INSTR('Programming','gram'); # Returns position of substring
SELECT REVERSE('ABCDE'); # Reverses String