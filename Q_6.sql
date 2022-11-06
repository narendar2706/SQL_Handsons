use hdns;

DELIMITER $$
CREATE PROCEDURE `AvailableDepts`()
begin
	select Deptname as 'name' from Department;
end$$

DELIMITER;

CALL AvailableDepts();
