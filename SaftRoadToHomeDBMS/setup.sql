DELETE FROM Agency;
DELETE FROM BadRoad;
DELETE FROM BELONG;
DELETE FROM COMMENT;
DELETE FROM GPS;
DELETE FROM HAS;
DELETE FROM Message;
DELETE FROM Tag;
DELETE FROM UserInfo;

INSERT INTO Agency
VALUES(0,N'交通部',0),
(1,N'公路總局',0),
(2,N'高速公路總局',0),
(3,N'台北市交通局',1),
(4,N'公路總局',0),
(5,N'警政署',0),
(6,N'台南市交通局',1),
(7,N'立法院',0),
(8,N'台北市議會',1),
(9,N'台灣機車路權促進會',2),
(10,N'標線改善台灣路',2);

INSERT INTO UserInfo
VALUES('jameskk2@gmail','jameskk','kk55688',22),
('yuki8702@gmail','yuki8787','snow6647',21),
('longstay@gmail','keepdoing','stay75621jj',45),
('goujayu@gmail','gouju0202','yuyu74571',33),
('whoami@gmail','secret','youcantguess',21),
('jacky841214@gmail','jackyyy4511','jackjackjack',19),
('biketaiwan@gmail','biketaiwan','bike000000',14),
('aaatoung@gmail','toungshun','e04comehere003',32),
('lkkzolo@gmail','zolo54jh','5486251jh',22),
('hotodb@gmail','hotomesu','suflo898dono',45);