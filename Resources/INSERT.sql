USE DCA;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

INSERT INTO members (name,address,dob,dor,balance) VALUES
('Edmond Simons', '123 Kings Street, Aberdeen, AB12 2AB', '1965-11-22', '2015-01-03', 0),
( 'Mary Malcolm', '3 London Road, Luton, LU1 1QY', '1990-08-08', '2015-01-17', 0),
( 'Mehmet Aydin', '29 Station Rd, London, N3 2SG', '1968-10-20', '2015-01-26', 0),
( 'Rob French', '13 Stafford Street, Aberdeen, AB12 1AQ', '1968-12-21', '2015-01-27', 0),
('Mike Wood', '10 London Avenue, Luton, LU12 3SB', '1982-08-18', '2015-10-03', 0),
( 'Emin Aydin', '148 Station Rd, London, N3 2SG', '1968-10-10', '2015-10-09', 0),
( 'Member Three', 'Address Three', '1998-03-02', '2016-01-17', 0),
( 'Member Four', 'Address Four', '1987-07-08', '2016-04-10', 0),
( 'Member Five', 'Address Five', '1988-03-02', '2016-06-13', 0),
( 'Member Six', 'Address Six', '1997-07-08', '2016-10-09', 0),
('admin', 'localhost', '1996-03-19', '2018-04-5', '0');

INSERT INTO users (username,password,status,members_id,usertype) VALUES
('admin', 'admin', 'APPROVED','11','ADMIN'),
('e-simons', '221165', 'APPROVED','1','NORMAL'),
('m-malcolm', '080890', 'APPROVED','2','NORMAL'),
('me-aydin', '201068', 'APPROVED','3','NORMAL'),
('mem-3', '020398', 'APPROVED','7','NORMAL'),
('mem-4', '070887', 'APPROVED','8','NORMAL'),
('r-french', '211268', 'APPROVED','4','NORMAL'),
('m-wood', '180882', 'APPROVED','5','NORMAL'),
('e-aydin', '101068', 'APPROVED','6','NORMAL'),
('mem-5', '020388', 'APPROVED','9','NORMAL'),
('mem-6', '070897', 'APPROVED','10','NORMAL');

INSERT INTO claims(members_id,date,rationale,status,amount) VALUES
( 3, '2016-04-16', 'change mirror', 'APPROVED', 120),
( 3, '2016-09-08', 'repair scratch', 'APPROVED', 90),
( 1, '2016-10-10', 'polishing tyers', 'APPROVED', 75);


INSERT INTO payments(members_id,type_of_payment,amount,date,time)  VALUES
( 1, 'FEE', 10, '2015-01-07','10:08:21'),
( 2, 'FEE', 10, '2015-01-24','11:28:25'),
(3, 'FEE', 10, '2015-01-26','18:00:00'),
( 4, 'FEE', 10, '2015-01-28','09:12:00'),
(5, 'FEE', 10, '2015-10-25','08:44:13'),
( 6, 'FEE', 10, '2015-10-26','10:08:21'),
( 1, 'FEE', 10, '2016-01-25','11:00:00'),
(2, 'FEE', 10, '2016-01-25','11:18:21'),
( 3, 'FEE', 10, '2016-02-05','16:38:13'),
(5, 'FEE', 10, '2016-10-12','09:44:18'),
(6, 'FEE', 10, '2016-10-20','14:42:45'),
(7, 'FEE', 10, '2016-01-23','01:01:01'),
( 8, 'FEE', 10, '2016-05-16','11:13:11'),
( 9, 'FEE', 10, '2016-06-13','00:00:00'),
( 10, 'FEE', 10, '2016-11-06','07:13:00');
