CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_quarter`(calendar_date date) RETURNS char(2) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	declare quarters char(2);
    set quarters = 	
    case 
		when month(calendar_date) in (9,10,11) then "Q1"
        when month(calendar_date) in (12,1,2) then "Q2"
        when month(calendar_date) in (3,4,5) then "Q3"
        when month(calendar_date) in (6,7,8) then "Q4"
	end ;

RETURN  quarters;
END