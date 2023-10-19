# Crowdfunding_ETL
KU Data Analytics Bootcamp Project 2-ETL

Data for this project was from the provided project files.

Layout for assignment came from starter file.

Specific sections using sources listed below:

--------------------------------------------------
Setup 
--------------------------------------------------

Dependency imports provided in starter file.

--------------------------------------------------
Extract the Crowdfunding.xlsx Data
--------------------------------------------------

The following section:

    pd.read_excel('Resources/crowdfunding.xlsx', engine="openpyxl")

Was provided by professor Benjamin Alford to get around the error reading the file.

The following was provided:

    # Create numpy arrays from 1-9 for the categories and 1-24 for the subcategories.
    category_ids = np.arange(1, 10)
    subcategory_ids = np.arange(1, 25)

    print(category_ids)
    print(subcategory_ids)



# Use a list comprehension to add "cat" to each category_id. 
cat_ids = ["cat" + str(cat_id) for cat_id in category_ids]


# Use a list comprehension to add "subcat" to each subcategory_id.    
scat_ids = ["subcat" + str(scat_id) for scat_id in subcategory_ids]



# Export categories_df and subcategories_df as CSV files.
category_df.to_csv("Resources/category.csv", index=False)

subcategory_df.to_csv("Resources/subcategory.csv", index=False)

# Read the data into a Pandas DataFrame. Use the `header=2` parameter when reading in the data.
contact_info_df = pd.read_excel('Resources/contacts.xlsx', header=2)
contact_info_df.head()

# Export the DataFrame as a CSV file. 
contacts_df_clean.to_csv("Resources/contacts.csv", encoding='utf8', index=False)