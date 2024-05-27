use RandName
declare @firstName varchar(50)
declare @middleName varchar(50)
declare @lastName varchar(50)
declare @completeName varchar(100)
declare @count int
declare @n int

set @count = 1

while (@count <= 10000)
begin
	set @n = rand()*10
	select @firstName = fName from firstName where ID = @n

	set @n = rand()*20
	select @middleName = lName from lastName where ID = @n

	set @n = rand()*20
	select @lastName = lName from lastName where ID = @n
	
	set @completeName = @firstName + ' ' + @middleName + ' ' + @lastName

	Insert Into completeName (cName) values (@completeName)

	set @count = @count + 1
end
go

use RandName
select * from completeName
go