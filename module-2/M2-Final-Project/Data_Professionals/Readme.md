![plot](../survey_img.png)


# Project: Visualizing Real World Data - Salaries of Data Professionals worldwide

## Overview

The goal of this project is to practice data cleaning, to create and interpret different types of visualizations using real world data. 

I have chosen to study the results of the Stack Overflow worldwide annual 'Developer Survey'. My dataset is an extract of the survey results in 2017, 2018, 2019 and 2020. It was downloaded from Kaggle.

Each row of the dataset is the response of one data professional individual with regard to country, job position, salary, job satisfaction, and more.

The initial dataset had 33,600 observations (respondents from an initial set of 177 countries) and 14 features.
I have downssized it to 22,660 rows/respondents and 8 features, mainly by:
 - reducing the scope of the response panel to those countries which are represented in the 4 yearly editions of the survey with at least 30 respondents each year;
 - discarding all respondents who have not provided their salary details.

## Findings

I have studied:
1/ the relationship between salary and other features such as country and job position. My assumption that the main connection would be between salary and country turned out to be true. 
2/ connections between job satisfaction and salary or job position; this told me there is NO strong connection between them.

Also I have calculated confidence intervals for the mean salary of the general population of US data professionals. I have used the stats.t.interval method from Python.
Finally I have assumed a $105,000 mean salary for all US data professionals and have used the one-sample ttest method to test this assumption. The test showed that a $105,000 salary is a credible assumption.


## Technical info / Deliverables
The dataset can be found at https://www.kaggle.com/phuchuynguyen/salary-and-moredata-scientist-analyst-engineer
I have used Python to prepare the data and for statistical testing. I have used Tableau Public for visualizing and interpreting data.
A github repo has been created specifically for this project, and can be found at --- 
The repo includes:
 - a jupyter notebook named 'Data Salary Dataviz'.
 - The slides of my Tableau workbook which can also be found at: https://public.tableau.com/profile/h.l.ne.hill#!/
 - the Stack Overflow Developer Survey questionnaire as background information.



