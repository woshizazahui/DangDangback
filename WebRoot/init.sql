drop  table  d_user;
create  table  d_user(
    id  integer auto_increment  primary  key,
    email   varchar(100),
    password  varchar(100),
    nickname  varchar(100),
    registertime   date,
    status       varchar(4)
)
select  *  from  order_product
create  table d_order(
    oid  integer  auto_increment  primary key,
    ordernumber  varchar(100)  unique,
    totalprice    double,
    producetime   date,
    orderstaus    varchar(100),
    uid  integer  references  d_user(id),
    did  integer  references  d_address(id)
)

create  table   d_address(
     did   integer auto_increment primary  key,
     receivename  varchar(100),
     receiveaddress  varchar(100),
     code            varchar(100),
     phone      varchar(100),
     telphone   varchar(100),
     defaultaddress  varchar(100),
     defaultstatus    varchar(5),
     uid   integer   references  d_user(id)
)

create  table  d_product(
      id  integer  auto_increment  primary key,
      productpic  varchar(100),
      productname varchar(100),
      autor      varchar(100),
      cbs         varchar(100),
      describeb    varchar(100),
      yprice      double,
      ddprice     double,
      cbstime     date,
      banci       varchar(100),
      yintime     date,
      ISBN        varchar(100),
      zishu       integer,
      yeshu       integer,
      kaiben      integer,
      zhizhang     integer,
      baozhuang    varchar(100),
      biantuijian   varchar(100),
      neirongjianjie   varchar(100),
      autorjianjie     varchar(100),
      mulu              varchar(100),
      meipinglun       varchar(100),
      shuzhaitu        varchar(100),
      shangtime        date,
      bookstatus       varchar(20),
      kucun            integer,
      xiaoliang        integer,
      gukepingfen      integer,
      tuijianstatus    integer,
      cid integer  references d_category(cid) ,
      parentid     integer  references  d_category(parentid) 
)
delete  from   d_address;
select * from d_address;
create  table  d_book(
           book_id        integer   auto_increment   primary key,
           picture   varchar(100),
           productname varchar(100),
           writer      varchar(100),
           cbs         varchar(100),
           bookdescribe    varchar(100),
           yprice      double,   
           dprice      double,
           cdate       varchar(100),
           banci       integer,
           rdate       varchar(100),
           yinci       integer,
           ISBN        varchar(100),
           zishu        integer,
           yeshu        integer,
           kaiben        integer,
           zhizhang      integer,
           baozhuang     varchar(100),
           tuijian       varchar(100),
           njianjie      varchar(100),
           zjianjie      varchar(100),
           mulu          integer,
           pinglun       varchar(100),
           chatu          varchar(100),
           sdate          date,
           pstatus        varchar(100),
           kucun          integer,
           xiaoliang      integer,
           pingfen        integer,
           tuijianfen     integer,
           categoryid   integer references d_category(cid),    
           parentid     integer  references  d_category(parentid) 
)
drop  table  d_book;
create   table   d_category(
       cid  integer  auto_increment  primary key,
       categoryname  varchar(100),
       parent_id     integer,
       productamount  integer
)
select *  from  d_category;
delete  table d_address;
create  table  order_product(
      opid  integer  auto_increment primary key,
      oid   integer  references  d_order(oid),
      pid   integer  references  d_product(id),
      amount  integer,
      xiaototalprice double
)
select *  from d_category
insert  into d_category  (categoryname,parent_id,productamount) values('小说',0,100);

insert  into d_category  (categoryname,parent_id,productamount) values('当代小说',13,20);

insert  into d_category  (categoryname,parent_id,productamount) values('近现代小说',13,20);

insert  into d_category  (categoryname,parent_id,productamount) values('古典小说',13,20);

insert  into d_category  (categoryname,parent_id,productamount) values('四大名著',13,20);

insert  into d_category  (categoryname,parent_id,productamount) values('世界名著',13,20);

insert  into d_category  (categoryname,parent_id,productamount) values('青春',0,100);

insert  into d_category  (categoryname,parent_id,productamount) values('校园',19,20);

insert  into d_category  (categoryname,parent_id,productamount) values('爱情/情感',19,20);

insert  into d_category  (categoryname,parent_id,productamount) values('叛逆/成长',19,20);

insert  into d_category  (categoryname,parent_id,productamount) values('玄幻',19,20);
insert  into d_category  (categoryname,parent_id,productamount) values('原创',19,20);
delete  from  d_category;
  select  s.cid  as  scid,s.categoryname as scategoryname,s.parent_id as  sparent_id,s.productamount as sproductamount,
      c.cid  as ccid,c.categoryname  as ccategoryname,c.productamount as cproductamount,c.parent_id  as  cparent_id from d_category s
      inner  join  d_category c  on s.cid=c.parent_id
insert into  d_book  values(1,'/DangDang/productImages/10.jpg','窗边的小豆豆','块哥','郑州大学出版社','这是一本好书',100.00,80.00,'2017-5-10',1,'2017-5-10',10000,'2019',1123,123,564,456,'很优秀','很优秀','很优秀','很优秀',100,'很优秀','很优秀',date_format('2017-5-10','%Y-%c-%d'),'很优秀',1000,10000,2312,10,33,25);
insert into  d_book  values(2,'/DangDang/productImages/2.jpg','童年 我的大学 在人间','块哥','郑州大学出版社','这是一本好书',100.00,80.00,'2017-5-10',1,'2017-5-10',10000,'2019',1123,123,564,456,'很优秀','很优秀','很优秀','很优秀',100,'很优秀','很优秀',date_format('2017-5-09','%Y-%c-%d'),'很优秀',20000,2000,2312,8,33,25);
insert into  d_book  values(3,'/DangDang/productImages/3.jpg','海水观赏鱼','块哥','郑州大学出版社','这是一本好书',100.00,80.00,'2017-5-10',1,'2017-5-10',10000,'2019',1123,123,564,456,'很优秀','很优秀','很优秀','很优秀',100,'很优秀','很优秀',date_format('2017-5-08','%Y-%c-%d'),'很优秀',1000,30000,2312,7,33,25);
insert into  d_book  values(4,'/DangDang/productImages/4.jpg','小妇人','块哥','郑州大学出版社','这是一本好书',100.00,80.00,'2017-5-10',1,'2017-5-10',10000,'2019',1123,123,564,456,'很优秀','很优秀','很优秀','很优秀',100,'很优秀','很优秀',date_format('2017-5-07','%Y-%c-%d'),'很优秀',1000,4000,2312,3,33,25);
insert into  d_book  values(5,'/DangDang/productImages/5.jpg','双螺旋','块哥','郑州大学出版社','这是一本好书',100.00,80.00,'2017-5-10',1,'2017-5-10',10000,'2019',1123,123,564,456,'很优秀','很优秀','很优秀','很优秀',100,'很优秀','很优秀',date_format('2017-5-06','%Y-%c-%d'),'很优秀',1000,5000,2312,8,33,25);
insert into  d_book  values(6,'/DangDang/productImages/6.jpg','简爱','块哥','郑州大学出版社','这是一本好书',100.00,80.00,'2017-5-10',1,'2017-5-10',10000,'2019',1123,123,564,456,'很优秀','很优秀','很优秀','很优秀',100,'很优秀','很优秀',date_format('2017-5-05','%Y-%c-%d'),'很优秀',1000,6000,2312,10,32,25);
insert into  d_book  values(7,'/DangDang/productImages/7.jpg','Java编程指南','块哥','郑州大学出版社','这是一本好书',100.00,80.00,'2017-5-10',1,'2017-5-10',10000,'2019',1123,123,564,456,'很优秀','很优秀','很优秀','很优秀',100,'很优秀','很优秀',date_format('2017-5-04','%Y-%c-%d'),'很优秀',7000,1000,2312,9,32,25);
insert into  d_book  values(8,'/DangDang/productImages/8.jpg','茶花女','块哥','郑州大学出版社','这是一本好书',100.00,80.00,'2017-5-10',1,'2017-5-10',10000,'2019',1123,123,564,456,'很优秀','很优秀','很优秀','很优秀',100,'很优秀','很优秀',date_format('2017-5-03','%Y-%c-%d'),'很优秀',1000,8000,2312,8,32,25);
insert into  d_book  values(9,'/DangDang/productImages/17.jpg','鲁宾逊漂流记','块哥','郑州大学出版社','这是一本好书',100.00,80.00,'2017-5-10',1,'2017-5-10',10000,'2019',1123,123,564,456,'很优秀','很优秀','很优秀','很优秀',100,'很优秀','很优秀',date_format('2017-5-02','%Y-%c-%d'),'很优秀',9000,1000,2312,8,32,25);
insert into  d_book  values(10,'/DangDang/productImages/16.jpg','一个陌生女人的来信','块哥','郑州大学出版社','这是一本好书',100.00,80.00,'2017-5-10',1,'2017-5-10',10000,'2019',1123,123,564,456,'很优秀','很优秀','很优秀','很优秀',100,'很优秀','很优秀',date_format('2017-5-01','%Y-%c-%d'),'很优秀',10000,1000,2312,9,32,25);
insert into  d_book  values(11,'/DangDang/productImages/18.jpg','老子说','块哥','郑州大学出版社','这是一本好书',100.00,80.00,'2017-5-10',1,'2017-5-10',10000,'2019',1123,123,564,456,'很优秀','很优秀','很优秀','很优秀',100,'很优秀','很优秀',date_format('2017-5-01','%Y-%c-%d'),'很优秀',1000,11000,2312,9,32,25);      
select *  from  d_book;


select  *   from  d_book                 where  parentid=25  


          order  by  sdate   desc  limit 0,3 
          
   select *  from  d_address;    
    select *  from  d_order;   
    select *  from order_product;

 create  table  d_admin(
       id  integer    auto_increment primary  key,
       adminname      varchar(100),
       adminpassword  varchar(100)
 )
 insert into  d_admin  values(1,'admin','123456');
 select *  from  d_admin
 create  table  dh_product(
      id  integer  auto_increment  primary key,
      productpic  varchar(100),
      productname varchar(100),
      autor      varchar(100),
      cbs         varchar(100),
      ddprice       double,
      kucun            integer,
      xiaoliang        integer,
      status     varchar(100),
      cid integer  references d_category(cid) 
)
select *  from  dh_product;
desc  d_category;
  select c.cid as ccid,c.categoryname as ccategoryname,c.parent_id as cparent_id,c.productamount as cproductamount,
    d.cid as ddid, d.categoryname as dcategoryname,d.parent_id as dparent_id,d.productamount as dproductamount
    from d_category c inner  join d_category d 
    on c.cid=d.parent_id
    
    
     select c.cid as ccid,c.categoryname as ccategoryname,c.parent_id as cparent_id,c.productamount as cproductamount,
    d.cid as dcid, d.categoryname as dcategoryname,d.parent_id as dparent_id,d.productamount as dproductamount
    from d_category c inner  join d_category d 
    on c.cid=d.parent_id
   select  *  from  dh_product;
   
   select  *  from   d_category;
   
   delete   from  dh_product
   select  p.id,p.productpic,p.productname,p.autor,p.cbs,p.ddprice,p.kucun,p.xiaoliang,p.status,
     c.categoryname,c.parent_id,c.productamount
     from  dh_product p  inner  join  d_category c where p.cid=c.cid   limit  0,4
     
     delete  from  d_order
     select *  from d_address
     delete from  d_address  where did=5
     	 select *  from d_order
       select  o.oid,o.ordernumber,o.totalprice,o.producetime,o.orderstaus,
      u.id,u.email,u.password,u.nickname,u.registertime,u.status,d.did,d.receivename,
      d.receiveaddress,d.code,d.phone,d.telphone,d.defaultaddress,d.defaultstatus
      from  d_order o  inner  join  d_user u  on o.uid=u.id
      inner join d_address  d  on o.did=d.did limit  0,3
     
      
      select e.id,  e.adminname,e.adminpassword,r.rid,r.rolename,
      s.resourceid,s.resourceurl  from  d_admin e  inner join 
      d_admin_role ar on e.id=ar.aid  inner join d_role r  on
      r.rid=ar.rid inner  join  d_role_resource rs  on  r.rid 
      =rs.rsoseid  inner join  d_resource s on s.resourceid =rs.resourcesid 
      where  e.adminname='admin'
12345
select *  from  d_category;
select c.cid as ccid,c.categoryname as ccategoryname,c.parent_id as cparent_id,c.productamount as cproductamount,
    d.cid as dcid, d.categoryname as dcategoryname,d.parent_id as dparent_id,d.productamount as dproductamount
    from d_category c inner  join d_category d 
    on c.cid=d.parent_id
select *  from  dh_product;
      select  p.id,p.productpic,p.productname,p.autor,p.cbs,p.ddprice,p.kucun,p.xiaoliang,p.status,
      p.cid , c.categoryname,c.parent_id,c.productamount
       from  dh_product p  inner  join  d_category c on p.cid=c.cid  order by id desc limit  0,3