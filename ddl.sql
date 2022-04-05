create table CustomerWallet
(customerWalletID varchar(30) NOT NULL,
FName char(30) NOT NULL,
LName char(30) NOT NULL,
Email varchar(40) NOT NULL,
PhoneNo char(10) NOT NULL,
Gender char(30) NOT NULL,
Age numeric (10) NOT NULL,
CardNo numeric (30) NOT NULL UNIQUE,
CardType char(30) NOT NULL CHECK (CardType IN ('Debit', 'Credit', 'Cash','Gift')),
StreetNo numeric (30) NOT NULL,
StreetName varchar(30) NOT NULL,
cCity varchar(30) NOT NULL,
State varchar(30) NOT NULL,
Zip varchar(30) NOT NULL,
Country char(30) NOT NULL,
Interest varchar(30) NOT NULL CHECK (Interest IN ('Household/Groceries', 'Electronics', 'Cosmetics','Books')),
constraint customer_pk primary key (customerWalletID)
)



--2. Creating table Seller
create table Seller
(sellerID varchar(30) NOT NULL,
sBrandName varchar(50) NOT NULL,
sPhoneNo numeric(10) NOT NULL,
sWebsite varchar(40) NOT NULL,
sTaxID numeric(9) NOT NULL,
sStreetName varchar(30) NOT NULL,
sHQCity varchar(30) NOT NULL,
sCountry varchar(30) NOT NULL,
sHQZip numeric(30) NOT NULL,
sBusinessDomain varchar(1) check (sBusinessDomain in ('0','1','2','3','4','5')),
constraint seller_pk primary key (sellerID)
)



--3.Creating Table Product as Product
create table Product
(productID varchar(30) NOT NULL,
prodName varchar(40) NOT NULL,
prodDesc varchar(80) NOT NULL,
prodPrice numeric(20) NOT NULL,
pSellerID varchar(30) NOT NULL,
prodType varchar(30) NOT NULL ,
prodUnisex char (3) ,
constraint product_pk primary key (productID),
constraint sproduct_fk FOREIGN KEY (pSellerID) REFERENCES Seller (sellerID)
)



--4.Creating table Coupons
create table Coupon 
(CouponID varchar(30) NOT NULL,
cCouponCreationdate DATETIME DEFAULT getdate() NOT NULL,
cCouponExpirydate DATETIME,
cCouponRedemptiondate DATETIME,
cSecretCode varchar(30) NOT NULL,
cRedeemed char (20),
cDiscountValue numeric (30) NOT NULL,
cWalletID varchar(30) NOT NULL,
cProductID varchar(30) NOT NULL,
ProdOriginalPrice numeric(20),
constraint CouponID_pk primary key (CouponID),
constraint cWalletID_fk FOREIGN KEY (cWalletID) REFERENCES CustomerWallet (CustomerWalletID),
constraint cProductID_fk FOREIGN KEY (cProductID) REFERENCES Product (ProductID)
)


create table Transactions
(TransactionID varchar(30) NOT NULL,
tCouponID varchar(30) NOT NULL,
tTransactionDate DATETIME DEFAULT getdate() NOT NULL,
tFinalAmount varchar(30),
tProductID varchar(30) ,
constraint TransactionID_pk primary key (TransactionID),
constraint tCouponID_fk FOREIGN KEY (tCouponID) REFERENCES Coupon(CouponID),
constraint tProductID_fk FOREIGN KEY (tProductID) REFERENCES Product (ProductID)
)


create table Reaction 
(ReactionID varchar(30) NOT NULL,
rWalletID varchar(30) NOT NULL,
rProductID varchar(30) NOT NULL,
ReactionType char (20) check (ReactionType IN ('NoReaction','Like', 'Dislike')),
constraint ReactionID_pk primary key (ReactionID),
constraint rCustomerID_fk FOREIGN KEY (rWalletID) REFERENCES CustomerWallet (CustomerWalletID),
constraint rProductID_fk FOREIGN KEY (rProductID) REFERENCES Product (ProductID)
)


create table Friendship 
(FriendshipID varchar(30) NOT NULL UNIQUE,
fPrimaryEmail varchar(40) NOT NULL,
fPrimaryCustomerID varchar(30) NOT NULL,
FriendEmailID varchar(30) NOT NULL,
FriendshipDate DATETIME DEFAULT getdate() NOT NULL,
constraint Friendship_pk primary key (FriendshipID),
constraint fPrimaryCustomerID_fk FOREIGN KEY (fPrimaryCustomerID) REFERENCES CustomerWallet (customerWalletID)
)