# Movies-ETL

## Resources
    - Data Source: wikipedia.movies.json, ratings.csv, movies_metadata.csv
    - Software: Python 3.7.6, conda 4.8.3, Visual Studio Code 1.47.2, Jupyter Notebook 6.0.3 pgAdmin 4 v4.23
  
## Challenge Overview, Assumptions, and Results
The objective of this challenge was to create an ETL pipeline in order to extract data from multiple sources, transform the data, and load the data into a SQL database. The completed function can be found in "Challenge.py"

### Assumptions
The created function has the following assumptions in the transformation procedures. In order to obtain a complete dataset from "wikipedia.movies.json" that is able to be used for analysis, all columns with less than 90% null values will be kept and the others will be dropped. Also, If budget or box office monetary data does not match the forms as described in the "parse_dollars" function, then the value will be replaced as null. Release date will be transformed to a "datetime" data type according to the four forms described in the function. Lastly, when merging the two transformed datasets from "wikipedia.movies.json" and kaggle "movies_metadata.csv", the kaggle data will assume all the data under movie titles, release date, language, and production company(s) columns. The kaggle data will also assume the data under runtime, budget, and revenue with the wikipedia data inserted in the position of any missing kaggle data under these respective columns.

In order to successfully upload into SQL, the sql database password must be saved in a "config.py" file under the "db_password" alias.

### Results
The resulting sql data tables are titled as "movies.csv" and "ratings.csv". The movies data table consists of the merged wikipedia and kaggle "movies_metadata" while the ratings data table consists of "ratings.csv" data with the time stamp column updated to a "datetime" data type.

The "movies.csv" is the final data table for this challenge and is included in this repository. The ratings table was too large to include in this repository.