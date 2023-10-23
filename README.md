# Crowdfunding_ETL
KU Data Analytics Bootcamp Project 2-ETL

Data for this project was from the provided project files.

Layout and markdown throughout for assignment came from starter file.

Dataframe and document names were provided throughout.

Export sections to csv were provided throughout.

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

--------------------------------------------------
Create the Category and Subcategory DataFrames
--------------------------------------------------

The following was provided:

    # Create numpy arrays from 1-9 for the categories and 1-24 for the subcategories.
    category_ids = np.arange(1, 10)
    subcategory_ids = np.arange(1, 25)

    print(category_ids)
    print(subcategory_ids)

The following section was using a method provided by Benjamin Alford:

    # Use a list comprehension to add "cat" to each category_id. 
    cat_ids = ["cat" + str(cat_id) for cat_id in category_ids]


    # Use a list comprehension to add "subcat" to each subcategory_id.    
    scat_ids = ["subcat" + str(scat_id) for scat_id in subcategory_ids]

This section for extracting the contacts.xlsx data was provided:

    # Read the data into a Pandas DataFrame. Use the `header=2` parameter when reading in the data.
    contact_info_df = pd.read_excel('Resources/contacts.xlsx', header=2)
    contact_info_df.head()

The following method for splitting the first and last names was created with help from our substitute, Matthew Brady: 

    # Create a "first"name" and "last_name" column with the first and last names from the "name" column.
    contacts_df[["first_name","last_name"]] = contacts_df["name"].str.split(" ", n=1, expand=True)