	CREATE FUNCTION ufn_IsWordComprised(@setOfLetters NVARCHAR(max), @word NVARCHAR(max))
	RETURNS bit
	AS
	BEGIN
		DECLARE @isComprised bit = 0;
		DECLARE @currIndex int = 1;
		DECLARE @currChar char;

		WHILE(@currIndex <= LEN(@word))
		BEGIN
			SET @currChar = SUBSTRING(@word, @currIndex, 1)
			IF(CHARINDEX(@currChar, @setOfLetters, 1) = 0)
			BEGIN
				RETURN @isComprised;
			END
			SET @currIndex += 1;
		END

		RETURN @isComprised + 1
	END