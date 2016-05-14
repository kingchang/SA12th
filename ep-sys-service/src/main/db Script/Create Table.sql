CREATE TABLE Buyer
(
	buyerID INTEGER NOT NULL,
	employeeID INTEGER 	,
	CONSTRAINT PK_Buyer PRIMARY KEY (buyerID)
)
;

CREATE TABLE Employee
(
	employeeID INTEGER NOT NULL,
	CONSTRAINT PK_Employee PRIMARY KEY (employeeID)
)
;

CREATE TABLE Material
(
	MaterialNumber VARCHAR(20) 	,
	materialID INTEGER NOT NULL,
	CONSTRAINT PK_Material PRIMARY KEY (materialID)
)
;

CREATE TABLE Organization
(
	organizationID INTEGER NOT NULL,
	CONSTRAINT PK_Organization PRIMARY KEY (organizationID)
)
;

CREATE TABLE PurchaseRequisition
(
	PRId int 	,
	PRDate DATE 	,
	purchaseRequisitionID INTEGER NOT NULL,
	buyerID INTEGER 	,
	supplierID INTEGER 	,
	CONSTRAINT PK_PurchaseRequisition PRIMARY KEY (purchaseRequisitionID)
)
;

CREATE TABLE PurchaseRequistionLineItem
(
	UnitPrice Decimal(10,0) 	,
	Quantity Decimal(10,0) 	,
	purchaseRequistionLineItemID INTEGER NOT NULL,
	materialID INTEGER 	,
	purchaseRequisitionID INTEGER 	,
	CONSTRAINT PK_PurchaseRequistionLineItem PRIMARY KEY (purchaseRequistionLineItemID)
)
;

CREATE TABLE Supplier
(
	supplierID INTEGER NOT NULL,
	organizationID INTEGER 	,
	realID VARCHAR(20),
	contactMobile VARCHAR(20),
	contactEmail VARCHAR(100),
	transactionLevel CHAR(1),
	CONSTRAINT PK_Supplier PRIMARY KEY (supplierID)
)
;

CREATE TABLE Supplier_Material
(
	supplierID INTEGER NOT NULL,
	materialID INTEGER NOT NULL,
	CONSTRAINT PK_Supplier_Material PRIMARY KEY(supplierID, materialID)
)
;

CREATE TABLE SupplierQuotation
(
	supplierQuotationID INTEGER NOT NULL,
	purchaseRequisitionID INTEGER 	,
	CONSTRAINT PK_SupplierQuotation PRIMARY KEY (supplierQuotationID)
)
;

CREATE TABLE SupplierQuotationLineItem
(
	supplierQuotationLineItemID INTEGER NOT NULL,
	purchaseRequistionLineItemID INTEGER 	,
	supplierQuotationID INTEGER 	,
	CONSTRAINT PK_SupplierQuotationLineItem PRIMARY KEY (supplierQuotationLineItemID)
)
;

ALTER TABLE Buyer 
 ADD CONSTRAINT FK_Buyer_Employee
	FOREIGN KEY (employeeID) REFERENCES Employee (employeeID) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE PurchaseRequisition 
 ADD CONSTRAINT FK_PurchaseRequisition_Buyer
	FOREIGN KEY (buyerID) REFERENCES Buyer (buyerID) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE PurchaseRequisition 
 ADD CONSTRAINT FK_PurchaseRequisition_Supplier
	FOREIGN KEY (supplierID) REFERENCES Supplier (supplierID) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE PurchaseRequistionLineItem 
 ADD CONSTRAINT FK_PurchaseRequistionLineItem_Material
	FOREIGN KEY (materialID) REFERENCES Material (materialID) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE PurchaseRequistionLineItem 
 ADD CONSTRAINT FK_PurchaseRequistionLineItem_PurchaseRequisition
	FOREIGN KEY (purchaseRequisitionID) REFERENCES PurchaseRequisition (purchaseRequisitionID) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE Supplier 
 ADD CONSTRAINT FK_Supplier_Organization
	FOREIGN KEY (organizationID) REFERENCES Organization (organizationID) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE SupplierQuotation 
 ADD CONSTRAINT FK_SupplierQuotation_PurchaseRequisition
	FOREIGN KEY (purchaseRequisitionID) REFERENCES PurchaseRequisition (purchaseRequisitionID) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE SupplierQuotationLineItem 
 ADD CONSTRAINT FK_SupplierQuotationLineItem_PurchaseRequistionLineItem
	FOREIGN KEY (purchaseRequistionLineItemID) REFERENCES PurchaseRequistionLineItem (purchaseRequistionLineItemID) ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE SupplierQuotationLineItem 
 ADD CONSTRAINT FK_SupplierQuotationLineItem_SupplierQuotation
	FOREIGN KEY (supplierQuotationID) REFERENCES SupplierQuotation (supplierQuotationID) ON DELETE No Action ON UPDATE No Action
;


