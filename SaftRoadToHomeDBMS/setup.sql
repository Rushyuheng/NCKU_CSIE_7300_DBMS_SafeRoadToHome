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
(4,N'台南市議會',1),
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

INSERT INTO BELONG
VALUES('jameskk2@gmail',9),
('jameskk2@gmail',10),
('yuki8702@gmail',0),
('longstay@gmail',1),
('goujayu@gmail',4),
('whoami@gmail',3),
('jacky841214@gmail',2),
('biketaiwan@gmail',5),
('aaatoung@gmail',7),
('lkkzolo@gmail',6),
('hotodb@gmail',10),
('hotodb@gmail',8);


INSERT INTO Tag
VALUES(0,N'前輪停止線劃設不當',N'標線'),
(1,N'禁行機車劃設不當',N'標線'),
(2,N'待轉區過小',N'待轉區'),
(3,N'待轉區位置不當',N'待轉區'),
(4,N'圓環車流交錯',N'圓環'),
(5,N'缺少左轉專用道',N'標線'),
(6,N'路面坑洞',N'路面'),
(7,N'標線過大導致滑倒',N'標線'),
(8,N'人行道過窄',N'人行道'),
(9,N'紅線劃設不當',N'標線');

INSERT INTO GPS
VALUES(22.999669, 120.228188,N'台南市',N'東區',NULL),
(23.001767, 120.217777,N'台南市',N'東區',N'小東路35號'),
(23.023549, 120.218190,N'台南市',N'永康區',N'中正南路172號'),
(23.039836, 120.238957,N'台南市',N'永康區',N'南142鄉道928號'),
(23.459878, 120.288831,N'嘉義縣',N'朴子市',N'朴子三路171號'),
(23.564311, 120.305412,N'雲林縣',N'北港鎮',N'民生路2號'),
(23.587373, 120.359030,N'雲林縣',N'新港鄉',NULL),
(24.126421, 120.669973,N'台中市',N'南區',N'五權南路'),
(24.161584, 120.674576,N'台中市',N'北區',N'德化街'),
(25.027980, 121.534416,N'台北市',N'大安區',N'新生南路二段62號'),
(25.029536, 121.500588,N'台北市',N'萬華區',N'萬大路117號');

INSERT INTO Message
VALUES(0,N'認同','2007-05-08 12:35:29.123'),
(1,N'那個設計真的奇怪','2017-06-28 11:33:29.123'),
(2,N'機車每次都卡在那','2021-12-04 16:35:29.123'),
(3,N'鬼之道路設計','2020-03-14 23:10:29.123'),
(4,N'圓環超容易車禍','2014-01-24 08:35:29.123'),
(5,N'台南一堆路口都這樣','2019-02-01 22:16:29.123'),
(6,N'支持車速分流','2021-05-11 16:35:29.123'),
(7,N'原來我不是第一個覺得這裡很難開的','2020-03-04 17:45:29.123'),
(8,N'什麼時候才要改啊？','2012-05-08 23:01:29.123'),
(9,N'上個月才看到那裡出車禍','2021-09-23 09:21:29.123'),
(10,N'希望市議員能協助監督改善','2018-04-11 10:34:29.123'),
(11,N'交通部已關注此問題','2017-06-10 10:35:29.123');

INSERT INTO BadRoad
VALUES(0,22.999669, 120.228188,N'待轉區只有小小一塊，還在車道上，每次都很怕被後面撞','jacky841214@gmail'),
(1,23.001767, 120.217777,N'前輪停止線太前面，停下來看不到路口車流','aaatoung@gmail'),
(2,23.023549, 120.218190,N'待轉區超小，三台機車就滿了','longstay@gmail'),
(3,23.039836, 120.238957,N'待轉區直接畫在人行道上，上去就被開單','goujayu@gmail'),
(4,23.564311, 120.305412,N'直行道走一走直接變左轉道，陷阱設計？','whoami@gmail'),
(5,23.459878, 120.288831,N'圓環內外側標線超怪，常常發生死亡交叉','yuki8702@gmail'),
(6,23.587373, 120.359030,N'路上洞超多，標線又超大，下雨天每騎必滑','biketaiwan@gmail'),
(7,24.126421, 120.669973,N'機車停車格上又劃紅線，讓人搞不懂到底能不能停','lkkzolo@gmail'),
(8,24.161584, 120.674576,N'三線道裡兩條禁行機車，請問非快車道為何禁行機車？機車道又很不平，是要機車用飛的嗎？','jameskk2@gmail'),
(9,25.027980, 121.534416,N'人行道上的電箱根本把整個人行道擋住了','hotodb@gmail'),
(10,25.029536, 121.500588,N'每天早上左轉車都要在這排隊，後面直行車也被卡住','jameskk2@gmail');

INSERT INTO HAS
VALUES(0,2),
(0,3),
(1,0),
(2,2),
(3,3),
(4,5),
(5,4),
(6,6),
(6,7),
(7,9),
(8,1),
(8,6),
(9,8),
(10,5);

INSERT INTO COMMENT
VALUES('jameskk2@gmail',9,2),
('jameskk2@gmail',10,8),
('yuki8702@gmail',0,1),
('longstay@gmail',1,7),
('goujayu@gmail',4,0),
('whoami@gmail',3,6),
('jacky841214@gmail',2,9),
('biketaiwan@gmail',5,3),
('aaatoung@gmail',7,5),
('lkkzolo@gmail',6,4),
('hotodb@gmail',10,11),
('hotodb@gmail',8,10);