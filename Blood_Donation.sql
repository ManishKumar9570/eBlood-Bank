create table Blood_Donation_user_table(
      email_id varchar2(30),
	  password varchar2(20) not null,
	  constraint BD_user_pk1 primary key(email_id)
);


insert into Blood_Donation_user_table(email_id,password) values('amitkr','123');
commit;

drop table Blood_Donation_detail_table;

create table Blood_Donation_detail_table(
	   email_id varchar2(30) not null,
	   name varchar2(30) not null,
	   gender varchar2(8) not null,
	   mobile_number varchar2(15) not null,
	   weight number(10,2) not null,
	   age number(2) not null,
	   blood_group varchar2(5) not null,
	   city varchar2(10) not null,
	   address varchar2(30) not null,
	 constraint BD_user_fk foreign key(email_id) references Blood_Donation_user_table(email_id)
);

insert into  Blood_Donation_detail_table(email_id,name,gender,mobile,weight,age,blood_group,city,address) values('amitkr','amit','male','9031513545',20.5,23,'A+','Raipur','Hostel-h nitrr');
commit;

select name from Blood_Donation_detail_table where email_id=(select email_id from Blood_Donation_user_table where email_id='amitkr');

create table Blood_Donation_Feedback_table(
name varchar2(30) not null,
email_id varchar2(30) not null,
feedback varchar2(1000) not null
);
