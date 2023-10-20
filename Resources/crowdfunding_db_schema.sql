-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign_data" (
    "cf_id" Int   NOT NULL,
    "contact_id" Int   NOT NULL,
    "company_name" Varchar(50)   NOT NULL,
    "description" Varchar(150)   NOT NULL,
    "goal" Float   NOT NULL,
    "pledged" Float   NOT NULL,
    "outcome" Varchar(50)   NOT NULL,
    "backers_count" Int   NOT NULL,
    "country" Varchar(10)   NOT NULL,
    "currency" Varchar(10)   NOT NULL,
    "launch_date" Date   NOT NULL,
    "end_date" Date   NOT NULL,
    "category_id" Varchar(50)   NOT NULL,
    "subcategory_id" Varchar(50)   NOT NULL,
    CONSTRAINT "pk_campaign_data" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "categories" (
    "category_id" Varchar(50)   NOT NULL,
    "category" Varchar(50)   NOT NULL,
    CONSTRAINT "pk_categories" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "sub_categories" (
    "subcategory_id" Varchar(50)   NOT NULL,
    "subcategory" Varchar(50)   NOT NULL,
    CONSTRAINT "pk_sub_categories" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" Int   NOT NULL,
    "first_name" Varchar(50)   NOT NULL,
    "last_name" Varchar(50)   NOT NULL,
    "email" Varchar(50)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "campaign_data" ADD CONSTRAINT "fk_campaign_data_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign_data" ADD CONSTRAINT "fk_campaign_data_category_id" FOREIGN KEY("category_id")
REFERENCES "categories" ("category_id");

ALTER TABLE "campaign_data" ADD CONSTRAINT "fk_campaign_data_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "sub_categories" ("subcategory_id");

