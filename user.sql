
CREATE LOGIN phuongtuan WITH PASSWORD = 'toilabanhmochi';
USE shopgiay;
CREATE USER phuongtuan FOR LOGIN phuongtuan;
ALTER ROLE db_owner ADD MEMBER phuongtuan;