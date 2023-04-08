# LA-Crime-Data-Analysis
Analyzing official data from LAPD for ten years of Los Angeles city crime. Visualizing data on Tableau, making a heatmap clip for LA crime rate at different hours of the day, and presenting report for the safest and most dangerous time for traveling to LA based on hypothesis testing.




##Data

The dataset is hosted by the City of Los Angeles. The organization has an open data platform called Los Angeles Open Data, which updates its information according to the amount of data that is brought in. This dataset is reported by the LAPD and maintained using Socrata's API and Kaggle's API. This dataset has 28 columns of variables, such as date and time of crimes, and their report also includes specific data about the location of the crime, such as area code and name, latitude and longitude coordinates, street address, etc. It also has data on crime type and code. Moreover, there is data about victims which is not in our discussion, which is why it has been omitted. Two datasets from 2010 to 2019 and 2019 to August 2021 were found. R Studio combines these two datasets for more accurate project results. For further analysis, the dataset also includes exact hours and weekdays. After mixing the data, missing values are checked using R functions. The year 2021 is excluded from the crime rate analysis because it lacks 12-month data. This project's final data spans 2010 to 2020.

## Exploratory Data Analysis

Upon analyzing the minimums and maximums of the variables, we were able to come up with the following result for crime rates based on area, month, and day of the week, as well as time of the day. Many of the results from our dataset were interesting, and the results were both expected and unexpected. For instance, the busiest crime day of the year was Halloween, and violent crime was most common in Los Angeles. Through our analysis, we have strategically manipulated the dataset to both maximize the tourist experience and minimize the amount and type of crime a typical tourist may face in Los Angeles. 


Figure 1

Figure 1 displays the areas of exploration that our team chose based on crime rate ranking and then further narrowed down to include popular destinations that tourists would typically visit during a trip to Los Angeles. In this project, the tourist destinations we chose are the Los Angeles County Museum of Arts (LACMA) and the Grove Mall located in Central LA, the Hollywood Walk of Fame in Hollywood, the University of Southern California in the Southwest, and Santa Monica Pier in the Pacific region.


Figure 2

Figure 2 shows data grouped by month and visualized for better and easier interpretation of the data. The graph displays that July, August, and October are the months with the highest number of crimes, while February has the lowest crime rate. Therefore, it is appropriate to conclude that February would be the safest month to visit Los Angeles.


Figure 3


We observed an abnormal peak at 12 pm, shown in Figure 3, which is likely to be an error due to it being a placeholder value for records with null time values. Excluding data abnormalities at 12:00 pm, we see that crime in the four chosen regions spikes from 6:00 pm to 8:00 pm. This was a major factor in our decision making and was taken into heavy consideration when creating the itinerary. As seen in the image below, Figure 4 illustrates the regions with higher densities of crime, in red, in the Los Angeles regions at the time of 6:00 pm.
  

        Figure 4 						   Figure 5
Lastly, Figure 5 displays the top 6 most frequent crimes occurring among the Los Angeles regions. Violent crimes such as assault in Los Angeles is the most common. Therefore, visitors who visit the area should stay vigilant and keep a low profile to avoid being victims. 
