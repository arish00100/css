INSERT INTO  CustomerWallet (customerWalletID, FName,LName,Email,PhoneNo,Gender,Age, CardNo,CardType,StreetNo,StreetName,cCity,State,Zip,Country,Interest) VALUES ('1','Adam','Boon','adamboon@syr.edu',3152692921,'male','23','13123243234','Debit','137','Summer Ave','Syracuse','New York','13210','USA','Household/Groceries')
INSERT INTO  CustomerWallet (customerWalletID, FName,LName,Email,PhoneNo,Gender,Age, CardNo,CardType,StreetNo,StreetName,cCity,State,Zip,Country,Interest) VALUES ('2','Jessica','Mondi','jessicamondi@syr.edu',3156212834,'female','28','13188243234','Credit','437','Winter Ave','Syracuse','New York','13210','USA','Books')
INSERT INTO  CustomerWallet (customerWalletID, FName,LName,Email,PhoneNo,Gender,Age, CardNo,CardType,StreetNo,StreetName,cCity,State,Zip,Country,Interest) VALUES ('3','Debra','Thomas','debrathomas@syr.edu',3152621234,'female','29','03123243234','Debit','237','Fall Ave','Syracuse','New York','13210','USA','Cosmetics')
INSERT INTO  CustomerWallet (customerWalletID, FName,LName,Email,PhoneNo,Gender,Age, CardNo,CardType,StreetNo,StreetName,cCity,State,Zip,Country,Interest) VALUES ('4','Ron','Pratto','ronpratto@syr.edu',3152221234,'male','33','83123243234','Credit','937','Morgan Ave','Syracuse','New York','13210','USA','Household/Groceries')
INSERT INTO  CustomerWallet (customerWalletID, FName,LName,Email,PhoneNo,Gender,Age, CardNo,CardType,StreetNo,StreetName,cCity,State,Zip,Country,Interest) VALUES ('5','Ray','Mysterio','raymysterio@syr.edu',3152221234,'male','53','93123243234','Debit','897','Summer Ave','Syracuse','New York','13210','USA','Household/Groceries')

SELECT * FROM CustomerWallet
--drop table CustomerWallet

--Inserting values into Seller
INSERT INTO  Seller (sellerID, sBrandName, sPhoneNo,sWebsite,sTaxID,sStreetName,sHQCity,sCountry,sHQZip,sBusinessDomain) VALUES ('S0','Williams Electronics',3192291234,'william@yahoo.edu',131239484,'Lafayette Rd','Mumbai','India','313210','0')
INSERT INTO  Seller (sellerID, sBrandName, sPhoneNo,sWebsite,sTaxID,sStreetName,sHQCity,sCountry,sHQZip,sBusinessDomain) VALUES ('S1','Smith Foods', 3192291234,'johnsmith@yahoo.edu',131239484,'James St','Syracuse','United States','13210','1')
INSERT INTO  Seller (sellerID, sBrandName, sPhoneNo,sWebsite,sTaxID,sStreetName,sHQCity,sCountry,sHQZip,sBusinessDomain) VALUES ('S2','Karen Retailers', 3192291234,'karenmclean@yahoo.edu',229239484,'Comstock Ave','Geneva','Switzerland','413210', '2')
INSERT INTO  Seller (sellerID, sBrandName, sPhoneNo,sWebsite,sTaxID,sStreetName,sHQCity,sCountry,sHQZip,sBusinessDomain) VALUES ('S3','Sewo Marketing', 3192291234,'sewopannol@yahoo.edu',441239484,'Nottingham Rd','Cancun','Mexico','6713210', '3')
INSERT INTO  Seller (sellerID, sBrandName, sPhoneNo,sWebsite,sTaxID,sStreetName,sHQCity,sCountry,sHQZip,sBusinessDomain) VALUES ('S4','Curt Furniture',3192291234,'curtrobinson@yahoo.edu',531230484,'Ostrom Ave','Syracuse','United States','13210','4')
INSERT INTO  Seller (sellerID, sBrandName, sPhoneNo,sWebsite,sTaxID,sStreetName,sHQCity,sCountry,sHQZip,sBusinessDomain) VALUES ('S5','LL Brands',3192291234,'rene@yahoo.edu',531230484,'Ostrom Ave','Syracuse','United States','13210','5')

SELECT * FROM Seller
--drop table Seller
--Inserting values into Product
INSERT INTO Product (productID, prodName, prodDesc, prodPrice, pSellerID, prodType,prodUnisex) VALUES ('P1','iPod','Electronic device used to play music', '700','S0', 'Electronics','Yes') 
INSERT INTO Product (productID, prodName, prodDesc, prodPrice, pSellerID, prodType,prodUnisex) VALUES ('P2','Couch', 'A Couch is piece of furniture for a seating of two', '111','S1','Household','Yes')
INSERT INTO Product (productID, prodName, prodDesc, prodPrice, pSellerID, prodType,prodUnisex) VALUES ('P3','HarryPotter Philosophers Stone', 'This is the first novel for Harry Potter Series','109', 'S5','Books','Yes')
INSERT INTO Product (productID, prodName, prodDesc, prodPrice, pSellerID, prodType, prodUnisex) VALUES ('P4','Hair Straightener', 'Its a device used for flattening hair and straighteninhg','000','S3', 'Beauty/Health','Yes')
INSERT INTO Product (productID, prodName, prodDesc, prodPrice, pSellerID, prodType,prodUnisex) VALUES ('P5','Bruno Mars - Just the way you are','Audio CD containing the Album','50','S0', 'Music','Yes')
INSERT INTO Product (productID, prodName, prodDesc, prodPrice, pSellerID, prodType,prodUnisex) VALUES ('P6','I Pad Pro','Ipad','1150','S0', 'Electronics','Yes')

SELECT * FROM Product
--drop table Product


--Inserting values into table Coupon
INSERT INTO Coupon (CouponID,cWalletID, cProductID, cSecretCode,cRedeemed,cDiscountValue,cCouponExpirydate,cCouponRedemptiondate) VALUES ('XYZ1','1','P1','Apple','No','10',dateadd(mm,1,getdate()),dateadd(dd,2,getdate()))
INSERT INTO Coupon (CouponID,cWalletID, cProductID, cSecretCode,cRedeemed,cDiscountValue,cCouponExpirydate,cCouponRedemptiondate) VALUES ('XYZ2','2','P3','Strawberry','No','50',dateadd(mm,1,getdate()),dateadd(dd,3,getdate()))
INSERT INTO Coupon (CouponID,cWalletID, cProductID, cSecretCode,cRedeemed,cDiscountValue,cCouponExpirydate,cCouponRedemptiondate) VALUES ('XYZ3','3','P2','Pie','No','20',dateadd(mm,1,getdate()),dateadd(dd,7,getdate()))
INSERT INTO Coupon (CouponID,cWalletID, cProductID, cSecretCode,cRedeemed,cDiscountValue,cCouponExpirydate,cCouponRedemptiondate) VALUES ('XYZ4','4','P4','Papaya','No','15',dateadd(mm,1,getdate()),dateadd(dd,8,getdate()))
INSERT INTO Coupon (CouponID,cWalletID, cProductID, cSecretCode,cRedeemed,cDiscountValue,cCouponExpirydate,cCouponRedemptiondate) VALUES ('XYZ5','5','P6','Mango','No','17',dateadd(mm,1,getdate()),dateadd(dd,9,getdate()))
INSERT INTO Coupon (CouponID,cWalletID, cProductID, cSecretCode,cRedeemed,cDiscountValue,cCouponExpirydate,cCouponRedemptiondate) VALUES ('XYZ6','6','P6','Melon','No','10',dateadd(mm,1,getdate()),dateadd(dd,4,getdate()))
INSERT INTO Coupon (CouponID,cWalletID, cProductID, cSecretCode,cRedeemed,cDiscountValue,cCouponExpirydate,cCouponRedemptiondate) VALUES ('XYZ10','2','P4','Melon','No','10',dateadd(mm,1,getdate()),dateadd(dd,7,getdate()))

SELECT * FROM Coupon
-- drop table Coupon

/*ALTER TABLE Coupon
ADD ProdOriginalPrice Numeric (20) NOT NULL
DEFAULT  10
WITH VALUES;
*/

--INSERT INTO Coupon (CouponID,cWalletID, cProductID, cSecretCode,cRedeemed,cDiscountValue,cCouponExpirydate,cCouponRedemptiondate) VALUES ('XYZ50','5','P5','Apple','No','500',dateadd(mm,1,getdate()),dateadd(dd,8,getdate()))


--5. Creating table coupon_Transaction

--Inserting values into table Transactions
INSERT INTO Transactions (TransactionID,tCouponID,tProductID) VALUES ('11','XYZ1','P1')
INSERT INTO Transactions (TransactionID,tCouponID,tProductID) VALUES ('22','XYZ2','P2')
INSERT INTO Transactions (TransactionID,tCouponID,tProductID) VALUES ('33','XYZ3','P3')
INSERT INTO Transactions (TransactionID,tCouponID,tProductID) VALUES ('44','XYZ4','P4')
INSERT INTO Transactions (TransactionID,tCouponID,tProductID) VALUES ('55','XYZ5','P5')
---INSERT INTO Transactions (TransactionID,tCouponID,tProductID) VALUES ('66','XYZ6','P6')
--INSERT INTO Transactions (TransactionID,tCouponID,tProductID) VALUES ('77','XYZ6','P6')

SELECT * FROM Transactions
-- drop table Transactions


--6.Creating table Reaction


--Inserting values into table Reaction
INSERT INTO Reaction (ReactionID,rWalletID, rProductID,ReactionType) VALUES ('R1','1','P1','Like')
INSERT INTO Reaction (ReactionID,rWalletID, rProductID,ReactionType) VALUES ('R2','2','P1','Like')
INSERT INTO Reaction (ReactionID,rWalletID, rProductID,ReactionType) VALUES ('R3','3','P3','Like')
INSERT INTO Reaction (ReactionID,rWalletID, rProductID,ReactionType) VALUES ('R4','4','P2','Dislike')
INSERT INTO Reaction (ReactionID,rWalletID, rProductID,ReactionType) VALUES ('R5','5','P5','Like')
INSERT INTO Reaction (ReactionID,rWalletID, rProductID,ReactionType) VALUES ('R6','5','P3','NoReaction')

SELECT * FROM Reaction
-- drop table Reaction


--7.Creating table Friendship


--Inserting values into table Friendship
INSERT INTO Friendship (FriendshipID,fPrimaryCustomerID, fPrimaryEmail, FriendEmailID) VALUES ('F1','3','debrathomas@syr.edu','adamboon@syr.edu')
INSERT INTO Friendship (FriendshipID,fPrimaryCustomerID, fPrimaryEmail, FriendEmailID) VALUES ('F2','2','jessicamondi@syr.edu','raymysterio@syr.edu')
INSERT INTO Friendship (FriendshipID,fPrimaryCustomerID, fPrimaryEmail, FriendEmailID) VALUES ('F3','1','adamboon@syr.edu','debrathomas@syr.edu')
INSERT INTO Friendship (FriendshipID,fPrimaryCustomerID, fPrimaryEmail, FriendEmailID) VALUES ('F4','4','ronpratto@syr.edu','jessicamondi@syr.edu')
INSERT INTO Friendship (FriendshipID,fPrimaryCustomerID, fPrimaryEmail, FriendEmailID) VALUES ('F5','5','raymysterio@syr.edu','ronpratto@syr.edu')
--INSERT INTO Friendship (FriendshipID,fPrimaryCustomerID,fSecondaryCustomerEmail) VALUES ('F6','6','S5','Friend')

SELECT * FROM Friendship
-- drop table Friendship



/*
drop table Friendship
drop table Reaction
drop table Transactions
drop table Coupon
 ----------------------------------------------------------------------------------------------------------------------------
drop table Product
drop table Seller
drop table CustomerWallet
*/

INSERT INTO Coupon (CouponID,cWalletID, cProductID, cSecretCode,cDiscountValue,cCouponRedemptiondate,cRedeemed) VALUES ('XYZ0190','4','P5','Melon','100',getdate(),'Yes')

select * from Transactions
--drop trigger trg_Final_Amount_Due
--------------------------------------
   --MAJOR DATA QUESTIONS:


/*c) Find all Transactions of all customers with their profiles
*/
select * from Transactions as t 
inner join Product as p on p.productID = t.tProductID 
inner join Coupon as c on c.CouponID = t.tCouponID
inner join CustomerWallet as w on w.customerWalletID = c.cWalletID


--d) Find all bills of all products by sellers . Show seller Profile

select * from  Transactions as t 
join Product as p on p.productID = t.tProductID 
join Coupon as c on c.CouponID = t.tCouponID
join Seller as s on s.sellerID = p.pSellerID


--d) For Sellers: Find all Reactions on all products by Customers and their friends . Show their Profile
select * from seller

select * from Reaction as r 
join Product as p on r.rProductID= p.productID
join CustomerWallet on customerWalletID = r.rWalletID
join Seller as s on s.sellerID = p.pSellerID
join Transactions as t on t.tProductID = p.productID
where s.sellerID = 'S1'


--d) Show all Friendships of select Customers to sellers . Show their Profile
select f.FriendshipID,f.FriendshipDate,f.fPrimaryEmail, f.FriendEmailID from Friendship as f 
join CustomerWallet on  Email= f.fPrimaryEmail
join Reaction as r on customerWalletID = r.rWalletID
join Product as p on r.rProductID= p.productID
join Seller as s on s.sellerID = p.pSellerID


--START:
--For CUSTOMERS:
--e) What are the valid Coupons available for a product
select * from Coupon as c 
join Product as p on p.productID = c.cProductID
where c.cCouponCreationdate < dateadd(mm,1,getdate()) and  p.prodName ='Couch'



--e) What are the valid offers available for a Brand
select p.prodName,p.prodDesc,p.prodType,p.productID,p.pSellerID from Product as p
join Coupon as c on c.cproductID = p.ProductID
join Seller as s on s.sellerID = p.pSellerID
where c.cCouponCreationdate < dateadd(mm,1,getdate()) and s.sBrandName = 'LL Brands'

--f) What are the valid Coupons available for a Product Category
select p.prodName,p.prodDesc,p.prodType,p.productID,p.pSellerID from Product as p
join Coupon as c on c.cproductID = p.ProductID
join Seller as s on s.sellerID = p.pSellerID
where c.cCouponCreationdate < dateadd(mm,1,getdate()) and p.prodType = 'Electronics'

--g) What are the coupons that i have redeemed and where?
select * 
from Coupon as c
join Product as p on c.cproductID = p.ProductID
where c.cRedeemed = 'Yes' 

--h) What are the coupons with their details that i have available and for which products?
select c.CouponID,c.cRedeemed,c.cSecretCode,c.cDiscountValue,c.cCouponCreationdate, p.prodName from Coupon as c
join CustomerWallet as w on c.cWalletID = w.customerWalletID 
join Product as p on c.cproductID = p.ProductID
join Seller as s on s.sellerID = p.pSellerID
where c.cRedeemed = 'No' 

--i) What are the coupons available with my friend and for which products?
select w.FName,w.LName,w.Email, c.CouponID,c.cRedeemed,c.cDiscountValue, p.prodName,f.FriendEmailID,f.FriendshipDate from CustomerWallet as w
join Friendship as f on f.fPrimaryEmail = w.Email
join Coupon as c on c.cWalletID = w.customerWalletID 
join Product as p on c.cproductID = p.ProductID
join Seller as s on s.sellerID = p.pSellerID
where  c.cRedeemed = 'No'  and f.fPrimaryEmail = 'jessicamondi@syr.edu' 

--FOR SELLERS

--a) How many customers are available for in a geography that have used the offers?

select w.FName,w.LName,w.Email, w.Country,c.cRedeemed,f.FriendEmailID,f.FriendshipDate from CustomerWallet as w
join Friendship as f on f.fPrimaryEmail = w.Email
join Coupon as c on c.cWalletID = w.customerWalletID 
join Product as p on c.cproductID = p.ProductID
join Seller as s on s.sellerID = p.pSellerID
where  c.cRedeemed = 'No'  and w.Country = 'USA' 

--b) What percentage of sent offers were accepted by users?
select Coupon.cRedeemed, (COUNT(cRedeemed)*100 /(select COUNT(*) from Coupon)) as Percentage
from Coupon 
group by Coupon.cRedeemed

--c) Which offers are not working ?
select Coupon.cRedeemed,CouponID from Coupon where cRedeemed = 'NO'

--d) What percentage of targetted offers were shared between customers?
select * from CustomerWallet

--e) How many customers are available for a particular category of offers?
SELECT CustomerWallet.Interest, COUNT(Coupon.cRedeemed) AS NumberOfCustomers FROM Coupon
LEFT JOIN CustomerWallet ON Coupon.cWalletID = CustomerWallet.customerWalletID
GROUP BY Interest;

select w.FName,w.LName,w.Email, w.Country,c.cRedeemed,f.Friend,f.FriendshipDate, w.Interest from CustomerWallet as w
join Friendship as f on f.fPrimaryEmail = w.Email
join Coupon as c on c.cWalletID = w.customerWalletID 
join Product as p on c.cproductID = p.ProductID
join Seller as s on s.sellerID = p.pSellerID
where  c.cRedeemed = 'No'  and w.Interest = 'Household/Groceries' 


-- f) Find all sellers who didnt make any transactions, and delete them from the Sellers table.
select * from seller as s where s.sellerID not in (select distinct t.TransactionID from Transactions as t)
--delete from seller where sellerID NOT IN(select distinct t.tsellerID from Bill as t)

-- g) Find the Customer who bought the product iPod, quantity of 2. Update this wallets phone number to 315-333-9876.

select * from CustomerWallet as w where w.customerWalletID in 
(select distinct c.cWalletID from Coupon as c where c.cProductID in 
(select distinct p.productID from Product as p where p.prodName = 'iPod' ))

select * from Product
update CustomerWallet /* update Interviewer phone number */
set PhoneNo = 3153339876
where customerWalletID in (select distinct customerWalletID from CustomerWallet where FName='Adam' and LName='Boon')
select * from CustomerWallet where FName='Adam' and LName='Boon'