#' @keywords internal
"_PACKAGE"

## usethis namespace: start
## usethis namespace: end
NULL

##############################################
##                DATA SETS                 ##
##############################################

#' McMaster Attitudes Data Set.
#'
#' A data set containing information about _students_ commuting to McMaster University. Data were collected
#' by means of a travel survey in the fall of 2010. Respondents were asked about their mode of
#' travel to McMaster University, in Hamilton, Canada. They were also asked to respond to a series of attitudinal
#' statements. The data set contains relevant attributes about the respondents. The format of the table is wide,
#' with each row representing an individual respondent. These variables were augmented with information from the
#' 2011 Census of Canada and land use information from local sources.
#'
#' @format A data frame with 1230 rows and 39 variables:
#' \describe{
#'   \item{id}{Unique identifier for respondents}
#'   \item{choice}{Mode of transportation chosen: Car, HSR (local transit), Walk}
#'   \item{LAT}{Latitude of the place or residence, geocoded at the nearest major intersection or centroid of 6-digit postal area}
#'   \item{LONG}{Longitude of the place or residence, geocoded at the nearest major intersection or centroid of 6-digit postal area}
#'   \item{license}{Indicator variable for holding a driver license: Yes/No}
#'   \item{vehicle}{Indicator variable for having individual access to a private car (i.e., car not shared with other household members): Yes/No}
#'   \item{gender}{Woman/Man}
#'   \item{age}{Age in years}
#'   \item{visa}{Visa status of student: Domestic}
#'   \item{living_arrangements}{Living arrangements DURING THE SCHOOL YEAR are: 1:Living with my family or relatives/By myself off-campus/Shared off-campus accommodations}
#'   \item{level}{Level of studies: Undergraduate Year I (UG I)/Undergraduate Year II  (UG I)/Undergraduate Year III  (UG III)/Undergraduate Year IV (UG IV)/Undergraduate Year V (UG V)/Masters/PhD/Other (Diploma or Certificate)}
#'   \item{Active_Neighborhood}{Response to statement "I like to live in a neighborhood where there's a lot going on": Five point likert scale from Strongly Disagree to Strongly Agree, including a neutral point}
#'   \item{Community}{Response to statement "There is a sense of community in my neighborhood": Five point likert scale from Strongly Disagree to Strongly Agree, including a neutral point}
#'   \item{Neighbors}{Response to statement "I know my neighbors well": Five point likert scale from Strongly Disagree to Strongly Agree, including a neutral point}
#'   \item{Safe_Walk}{Response to statement "I feel safe and secure when walking in my neighborhood": Five point likert scale from Strongly Disagree to Strongly Agree, including a neutral point}
#'   \item{Shops_Important}{Response to statement "Having shops and services within walking distance of my home is important to me": Five point likert scale from Strongly Disagree to Strongly Agree, including a neutral point}
#'   \item{Travel_Alone}{Response to statement "I like traveling alone": Five point likert scale from Strongly Disagree to Strongly Agree, including a neutral point}
#'   \item{DAUID}{Unique ID of Dissemination Area of the Census}
#'   \item{Rate_Couple_Child}{Proportion of families that are couples with children out of all families in Dissemination Area}
#'   \item{Rate_SW_Child}{Proportion of families that are single parent (woman) with children out of all families in Dissemination Area}
#'   \item{Rate_SM_Child}{Proportion of families that are single parent (man) with children out of all families in Dissemination Area}
#'   \item{Mean_Children}{Average number of children at home per census family in Dissemination Area}
#'   \item{Rate_Non_Canadian}{Proportion of non-Canadian residents to total population in Dissemination Area}
#'   \item{Median_HH_Income}{Median family income in Dissemination Area in $10,000}
#'   \item{Mean_HH_Income}{Mean family income in Dissemination Area in $10,000}
#'   \item{Rate_Unemployment}{Unemployment rate in Dissemination Area}
#'   \item{Rate_1yr_Move}{Proportion of residents that moved to Dissemination Area in the year previous to the census}
#'   \item{Rate_5yr_Move}{Proportion of residents that moved to Dissemination Area in the 5 years previous to the census}
#'   \item{Rate_Public}{Proportion of residents in Dissemination Area that used public transportation to commute to work}
#'   \item{Rate_Walk}{Proportion of residents in Dissemination Area that walked to work}
#'   \item{Rate_Cycle}{Proportion of residents in Dissemination Area that cycled to work}
#'   \item{AREA}{Area of Dissemination Area in square kilometers}
#'   \item{LUM}{Entropy-based land use mix index in Dissemination Area: lower values mean more homogenous land uses, higher values greater mix of uses}
#'   \item{SIDEWALK_DENSITY}{Sidewalk density in Dissemination Area in km/sq.km}
#'   \item{STREET_DENSITY}{Street density in Dissemination Area in km/sq.km}
#'   \item{INTERSECTION_DENSITY}{Intersection density in Dissemination Area in 1/sq.km}
#'   \item{SF_P_RATIO}{Ratio of building footprint to parcel area in Dissemination Area: a measure of density of development}
#'   \item{EMPLOYMENT_DENSITY}{Employment density in Dissemination Area in jobs/sq.km}
#'   \item{POPULATION_DENSITY}{Population density in Dissemination Area in people/sq.km}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name mc_attitudes
#' @usage data(mc_attitudes)
#' @source P\'{a}ez, A. (2013). Mapping travelers’ attitudes: does space matter?. Journal of Transport Geography, 26, 117-125. (https://doi.org/10.1016/j.jtrangeo.2012.09.002)
#' @examples
#'  data(mc_attitudes)
#'  summary(mc_attitudes$Community)
"mc_attitudes"

#' McMaster Commuting Data set (wide format).
#'
#' A data set containing information about _students_ commuting to McMaster University. Data were collected
#' by means of a travel survey in the fall of 2010. Respondents were asked about their mode of
#' travel to McMaster University, in Hamilton, Canada. They were also asked about the modes available
#' to them. The characteristics of the trips were self-reported or imputed. The data set also contains
#' relevant attributes about the respondents. The format of the table is wide, with each individual
#' decision maker in a row.
#'
#' @format A data frame with 1375 rows and 74 variables:
#' \describe{
#'   \item{id}{Unique identifier for respondents}
#'   \item{choice}{Mode of transportation chosen: Cycle, Walk, HSR (local transit), Car}
#'   \item{available.Cycle}{An indicator variable for availability of cycling: Yes/No}
#'   \item{available.Walk}{An indicator variable for availability of walking: Yes/No}
#'   \item{available.HSR}{An indicator variable for availability of buses: Yes/No}
#'   \item{available.Car}{An indicator variable for availability of car: Yes/No}
#'   \item{time.Cycle}{Travel time by bicycle to campus in minutes}
#'   \item{time.Walk}{Travel time by walking to campus in minutes}
#'   \item{time.HSR}{Travel time by bus to campus in minutes}
#'   \item{time.Car}{Travel time by car to campus in minutes}
#'   \item{access.Cycle}{Access time to mode in minutes (i.e., reaching a transit stop)}
#'   \item{access.Walk}{Access time to mode in minutes (i.e., reaching a transit stop)}
#'   \item{access.HSR}{Access time to mode in minutes (i.e., reaching a transit stop)}
#'   \item{access.Car}{Access time to mode in minutes (i.e., reaching a transit stop)}
#'   \item{wait.Cycle}{Waiting time (i.e., at a transit stop)}
#'   \item{wait.Walk}{Waiting time (i.e., at a transit stop)}
#'   \item{wait.HSR}{Waiting time (i.e., at a transit stop)}
#'   \item{wait.Car}{Waiting time (i.e., at a transit stop)}
#'   \item{transfer.Walk}{Number of transfers when travelling by transit}
#'   \item{transfer.Cycle}{Number of transfers when travelling by transit}
#'   \item{transfer.HSR}{Number of transfers when travelling by transit}
#'   \item{transfer.Car}{Number of transfers when travelling by transit}
#'   \item{parking}{Indicator variable for holding a university parking permit: Yes/No}
#'   \item{vehind}{Indicator variable for having individual access to a private car (i.e., car not shared with other household members): Yes/No}
#'   \item{gender}{Woman/Man}
#'   \item{age}{Age in years}
#'   \item{shared}{Indicator variable for a student living in a rental property with other students, i.e., living in shared accommodations}
#'   \item{family}{Indicator variable for living in family home}
#'   \item{child}{Indicator variable for presence of dependent minors in household: Yes/No}
#'   \item{street_density}{Street density in the dissemination area of the place of residence in $km/km^2$}
#'   \item{sidewalk_density}{Sidewalk density in the dissemination area of the place of residence in $km/km^2$}
#'   \item{LAT}{Latitude of the place or residence, geocoded at the nearest major intersection or centroid of 6-digit postal area}
#'   \item{LONG}{Longitude of the place or residence, geocoded at the nearest major intersection or centroid of 6-digit postal area}
#'   \item{PersonalVehComf_SD}{Response to statement "The personal vehicles I usually travel in are comfortable": 1 if Strongly Disagree, 0 otherwise}
#'   \item{PersonalVehComf_D}{Response to statement "The personal vehicles I usually travel in are comfortable": 1 if Disagree, 0 otherwise}
#'   \item{PersonalVehComf_A}{Response to statement "The personal vehicles I usually travel in are comfortable": 1 if Agree, 0 otherwise}
#'   \item{PersonalVehComf_SA}{Response to statement "The personal vehicles I usually travel in are comfortable": 1 if Strongly Agree, 0 otherwise}
#'   \item{Fun_SD}{Response to statement "Getting there is half the fun": 1 if Strongly Disagree, 0 otherwise}
#'   \item{Fun_D}{Response to statement "Getting there is half the fun": 1 if Disagree, 0 otherwise}
#'   \item{Fun_A}{Response to statement "Getting there is half the fun": 1 if Agree, 0 otherwise}
#'   \item{Fun_SA}{Response to statement "Getting there is half the fun": 1 if Strongly Agree, 0 otherwise}
#'   \item{ActiveNeigh_SD}{Response to statement "I like to live in a neighborhood where there's a lot going on": 1 if Strongly Disagree, 0 otherwise}
#'   \item{ActiveNeigh_D}{Response to statement "I like to live in a neighborhood where there's a lot going on": 1 if Disagree, 0 otherwise}
#'   \item{ActiveNeigh_A}{Response to statement "I like to live in a neighborhood where there's a lot going on": 1 if Agree, 0 otherwise}
#'   \item{ActiveNeigh_SA}{Response to statement "I like to live in a neighborhood where there's a lot going on": 1 if Strongly Agree, 0 otherwise}
#'   \item{UsefulTrans_SD}{Response to statement "My commute trip is a useful transition between home and school": 1 if Strongly Disagree, 0 otherwise}
#'   \item{UsefulTrans_D}{Response to statement "My commute trip is a useful transition between home and school": 1 if Disagree, 0 otherwise}
#'   \item{UsefulTrans_A}{Response to statement "My commute trip is a useful transition between home and school": 1 if Agree, 0 otherwise}
#'   \item{UsefulTrans_SA}{Response to statement "My commute trip is a useful transition between home and school": 1 if Strongly Agree, 0 otherwise}
#'   \item{BusComf_SD}{Response to statement "The buses I usually travel in are comfortable": 1 if Strongly Disagree, 0 otherwise}
#'   \item{BusComf_D}{Response to statement "The buses I usually travel in are comfortable": 1 if Disagree, 0 otherwise}
#'   \item{BusComf_A}{Response to statement "The buses I usually travel in are comfortable": 1 if Agree, 0 otherwise}
#'   \item{BusComf_SA}{Response to statement "The buses I usually travel in are comfortable": 1 if Strongly Agree, 0 otherwise}
#'   \item{TravelAlone_SD}{Response to statement "I like traveling alone": 1 if Strongly Disagree, 0 otherwise}
#'   \item{TravelAlone_D}{Response to statement "I like traveling alone": 1 if Disagree, 0 otherwise}
#'   \item{TravelAlone_A}{Response to statement "I like traveling alone": 1 if Agree, 0 otherwise}
#'   \item{TravelAlone_SA}{Response to statement "I like traveling alone": 1 if Strongly Agree, 0 otherwise}
#'   \item{Shelters_SD}{Response to statement "Shelters and other public transportation facilities that I commonly use are of good quality": 1 if Strongly Disagree, 0 otherwise}
#'   \item{Shelters_D}{Response to statement "Shelters and other public transportation facilities that I commonly use are of good quality": 1 if Disagree, 0 otherwise}
#'   \item{Shelters_A}{Response to statement "Shelters and other public transportation facilities that I commonly use are of good quality": 1 if Agree, 0 otherwise}
#'   \item{Shelters_SA}{Response to statement "Shelters and other public transportation facilities that I commonly use are of good quality": 1 if Strongly Agree, 0 otherwise}
#'   \item{Community_SD}{Response to statement "There is a sense of community in my neighborhood": 1 if Strongly Disagree, 0 otherwise}
#'   \item{Community_D}{Response to statement "There is a sense of community in my neighborhood": 1 if Disagree, 0 otherwise}
#'   \item{Community_A}{Response to statement "There is a sense of community in my neighborhood": 1 if Agree, 0 otherwise}
#'   \item{Community_SA}{Response to statement "There is a sense of community in my neighborhood": 1 if Agree, 0 otherwise}
#'   \item{personal_veh_comfortable}{Response to statement "The personal vehicles I usually travel in are comfortable" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree}
#'   \item{getting_there_fun}{Response to statement "Getting there is half the fun" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree}
#'   \item{like_active_neighborhood}{Response to statement "I like to live in a neighborhood where there's a lot going on" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree}
#'   \item{commute_useful_transition}{Response to statement "My commute trip is a useful transition between home and school" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree}
#'   \item{buses_comfortable}{Response to statement "The buses I usually travel in are comfortable" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree}
#'   \item{prefer_travel_alone}{Response to statement "I like traveling alone" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree}
#'   \item{shelter_good_quality}{Response to statement "Shelters and other public transportation facilities that I commonly use are of good quality" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree}
#'   \item{sense_community}{Response to statement "There is a sense of community in my neighborhood" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree1 if Strongly Disagree, 0 otherwise}
#'   \item{numna}{Total number of available alternatives, e.g., if bus and walk = 2, if all four = 4}
#' }
#'
#' @docType data
#' @keywords data sets
#' @name mc_commute_wide
#' @usage data(mc_commute_wide)
#' @source Whalen, K. E., P\'{a}ez, A., & Carrasco, J. A. (2013). Mode choice of university students commuting to school and the role of active travel. Journal of Transport Geography, 31, 132-142. (https://doi.org/10.1016/j.jtrangeo.2013.06.008)
#' @examples
#'  data(mc_commute_wide)
#'  summary(mc_commute_wide$choice)
"mc_commute_wide"

#' McMaster Commuting Data Set (long format).
#'
#' A data set containing information about _students_ commuting to McMaster University. Data were collected
#' by means of a travel survey in the fall of 2010. Respondents were asked about their mode of
#' travel to McMaster University, in Hamilton, Canada. They were also asked about the modes available
#' to them. The characteristics of the trips were self-reported or imputed. The data set also contains
#' relevant attributes about the respondents. The format of the table is long, with each row representing
#' a choice situation.
#'
#' @format An indexed data frame of class dfidx with 5500 rows and 62 variables:
#' \describe{
#'   \item{id}{Unique identifier for respondents}
#'   \item{choice}{Mode of transportation chosen: Cycle, Walk, HSR (local transit), Car}
#'   \item{parking}{Indicator variable for holding a university parking permit: Yes/No}
#'   \item{vehind}{Indicator variable for having individual access to a private car (i.e., car not shared with other household members): Yes/No}
#'   \item{gender}{Woman/Man}
#'   \item{age}{Age in years}
#'   \item{shared}{Indicator variable for Indicator variable for a student living in a rental property with other students, i.e., living in shared accommodations}
#'   \item{family}{Indicator variable for living in family home}
#'   \item{child}{Indicator variable for presence of dependent minors in household: Yes/No}
#'   \item{street_density}{Street density in the dissemination area of the place of residence in $km/km^2$}
#'   \item{sidewalk_density}{Sidewalk density in the dissemination area of the place of residence in $km/km^2$}
#'   \item{LAT}{Latitude of the place or residence, geocoded at the nearest major intersection or centroid of 6-digit postal area}
#'   \item{LONG}{Longitude of the place or residence, geocoded at the nearest major intersection or centroid of 6-digit postal area}
#'   \item{PersonalVehComf_SD}{Response to statement "The personal vehicles I usually travel in are comfortable": 1 if Strongly Disagree, 0 otherwise}
#'   \item{PersonalVehComf_D}{Response to statement "The personal vehicles I usually travel in are comfortable": 1 if Disagree, 0 otherwise}
#'   \item{PersonalVehComf_A}{Response to statement "The personal vehicles I usually travel in are comfortable": 1 if Agree, 0 otherwise}
#'   \item{PersonalVehComf_SA}{Response to statement "The personal vehicles I usually travel in are comfortable": 1 if Strongly Agree, 0 otherwise}
#'   \item{Fun_SD}{Response to statement "Getting there is half the fun": 1 if Strongly Disagree, 0 otherwise}
#'   \item{Fun_D}{Response to statement "Getting there is half the fun": 1 if Disagree, 0 otherwise}
#'   \item{Fun_A}{Response to statement "Getting there is half the fun": 1 if Agree, 0 otherwise}
#'   \item{Fun_SA}{Response to statement "Getting there is half the fun": 1 if Strongly Agree, 0 otherwise}
#'   \item{ActiveNeigh_SD}{Response to statement "I like to live in a neighborhood where there's a lot going on": 1 if Strongly Disagree, 0 otherwise}
#'   \item{ActiveNeigh_D}{Response to statement "I like to live in a neighborhood where there's a lot going on": 1 if Disagree, 0 otherwise}
#'   \item{ActiveNeigh_A}{Response to statement "I like to live in a neighborhood where there's a lot going on": 1 if Agree, 0 otherwise}
#'   \item{ActiveNeigh_SA}{Response to statement "I like to live in a neighborhood where there's a lot going on": 1 if Strongly Agree, 0 otherwise}
#'   \item{UsefulTrans_SD}{Response to statement "My commute trip is a useful transition between home and school": 1 if Strongly Disagree, 0 otherwise}
#'   \item{UsefulTrans_D}{Response to statement "My commute trip is a useful transition between home and school": 1 if Disagree, 0 otherwise}
#'   \item{UsefulTrans_A}{Response to statement "My commute trip is a useful transition between home and school": 1 if Agree, 0 otherwise}
#'   \item{UsefulTrans_SA}{Response to statement "My commute trip is a useful transition between home and school": 1 if Strongly Agree, 0 otherwise}
#'   \item{BusComf_SD}{Response to statement "The buses I usually travel in are comfortable": 1 if Strongly Disagree, 0 otherwise}
#'   \item{BusComf_D}{Response to statement "The buses I usually travel in are comfortable": 1 if Disagree, 0 otherwise}
#'   \item{BusComf_A}{Response to statement "The buses I usually travel in are comfortable": 1 if Agree, 0 otherwise}
#'   \item{BusComf_SA}{Response to statement "The buses I usually travel in are comfortable": 1 if Strongly Agree, 0 otherwise}
#'   \item{TravelAlone_SD}{Response to statement "I like traveling alone": 1 if Strongly Disagree, 0 otherwise}
#'   \item{TravelAlone_D}{Response to statement "I like traveling alone": 1 if Disagree, 0 otherwise}
#'   \item{TravelAlone_A}{Response to statement "I like traveling alone": 1 if Agree, 0 otherwise}
#'   \item{TravelAlone_SA}{Response to statement "I like traveling alone": 1 if Strongly Agree, 0 otherwise}
#'   \item{Shelters_SD}{Response to statement "Shelters and other public transportation facilities that I commonly use are of good quality": 1 if Strongly Disagree, 0 otherwise}
#'   \item{Shelters_D}{Response to statement "Shelters and other public transportation facilities that I commonly use are of good quality": 1 if Disagree, 0 otherwise}
#'   \item{Shelters_A}{Response to statement "Shelters and other public transportation facilities that I commonly use are of good quality": 1 if Agree, 0 otherwise}
#'   \item{Shelters_SA}{Response to statement "Shelters and other public transportation facilities that I commonly use are of good quality": 1 if Strongly Agree, 0 otherwise}
#'   \item{Community_SD}{Response to statement "There is a sense of community in my neighborhood": 1 if Strongly Disagree, 0 otherwise}
#'   \item{Community_D}{Response to statement "There is a sense of community in my neighborhood": 1 if Disagree, 0 otherwise}
#'   \item{Community_A}{Response to statement "There is a sense of community in my neighborhood": 1 if Agree, 0 otherwise}
#'   \item{Community_SA}{Response to statement "There is a sense of community in my neighborhood": 1 if Agree, 0 otherwise}
#'   \item{personal_veh_comfortable}{Response to statement "The personal vehicles I usually travel in are comfortable" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree}
#'   \item{getting_there_fun}{Response to statement "Getting there is half the fun" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree}
#'   \item{like_active_neighborhood}{Response to statement "I like to live in a neighborhood where there's a lot going on" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree}
#'   \item{commute_useful_transition}{Response to statement "My commute trip is a useful transition between home and school" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree}
#'   \item{buses_comfortable}{Response to statement "The buses I usually travel in are comfortable" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree}
#'   \item{prefer_travel_alone}{Response to statement "I like traveling alone" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree}
#'   \item{shelter_good_quality}{Response to statement "Shelters and other public transportation facilities that I commonly use are of good quality" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree}
#'   \item{sense_community}{Response to statement "There is a sense of community in my neighborhood" as factor: SD-Strongly Disagree, D-Disagree, N-Neutral, A-Agree, SA-Strongly Agree1 if Strongly Disagree, 0 otherwise}
#'   \item{numna}{Total number of available alternatives, e.g., if bus and walk = 2, if all four = 4}
#'   \item{alt}{A factor with the alternatives in the choice set}
#'   \item{available}{An indicator variable for availability of the alternative}
#'   \item{time.Cycle}{Travel time by alternative}
#'   \item{access}{Access time to transit in minutes (i.e., reaching a transit stop)}
#'   \item{wait}{Waiting time transit (i.e., at a transit stop)}
#'   \item{transfer}{Number of transit transfers}
#'   \item{idx}{Index for the table: includes chid (identifier for the choice) and alt (the alternative)}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name mc_commute_long
#' @usage data(mc_commute_long)
#' @source Whalen, K. E., P\'{a}ez, A., & Carrasco, J. A. (2013). Mode choice of university students commuting to school and the role of active travel. Journal of Transport Geography, 31, 132-142. (https://doi.org/10.1016/j.jtrangeo.2013.06.008)
#' @examples
#'  data(mc_commute_long)
#'  library(dfidx)
#'  print(mc_commute_long, n = 12)
"mc_commute_long"

#' McMaster Commuting Data Set (csv file).
#'
#' A delimited text file containing information about _students_ commuting to McMaster University. Data were collected
#' by means of a travel survey in the fall of 2010. Respondents were asked about their mode of
#' travel to McMaster University, in Hamilton, Canada. They were also asked about the modes available
#' to them. The characteristics of the trips were self-reported or imputed. The data set also contains
#' relevant attributes about the respondents. The format of the table is long, with each row representing
#' a choice situation.
#'
#' @format An comma separated text file :
#' \describe{
#'   \item{RespondentID}{Unique identifier for respondents}
#'   \item{choice}{numeric variable indicating modes of transportation: (1) Cycle, (2) Walk, (3) HSR (local transit), (4) Car}
#'   \item{avcycle}{Indicator variable for availability of cycling: (1) Yes, (0) No}
#'   \item{avwalk}{Indicator variable for availability of walking: (1) Yes, (0) No}
#'   \item{avhsr}{Indicator variable for availability of HSR: (1) Yes, (0) No}
#'   \item{avcar}{Indicator variable for availability of car: (1) Yes, (0) No}
#'   \item{timecycle}{Travel time by cycling in minutes (when mode not available coded as 100000)}
#'   \item{timewalk}{Travel time by walking in minutes (when mode not available coded as 100000)}
#'   \item{accesshsr}{Access time to HSR in minutes}
#'   \item{waitingtimehsr}{Waiting time when travelling by HSR in minutes}
#'   \item{transfer}{Number of transit transfers}
#'   \item{timecar}{Travel time by car in minutes (when mode not available coded as 100000)}
#'   \item{parking}{Indicator variable for holding a university parking permit: (1) Yes, (0) No}
#'   \item{vehind}{Indicator variable for having individual access to a private car (i.e., car not shared with other household members): (1) Yes, (0) No}
#'   \item{owncycle}{Indicator variable for owning a bicycle: (1) Yes, (0) No}
#'   \item{gender}{Indicator variable for gender: (1) Woman, (0) Man}
#'   \item{age}{Age in years}
#'   \item{solo}{Indicator variable for living in solo accommodations: (1) Yes, (0) No}
#'   \item{shared}{Indicator variable for a student living in a rental property with other students, i.e., shared accommodations: (1) Yes, (0) No}
#'   \item{family}{Indicator variable for living in family home: (1) Yes, (0) No}
#'   \item{child}{Indicator variable for presence of dependent minors in household: (1) Yes, (0) No}
#'   \item{primary_caregiver}{Indicator variable for being the primary caregiver of dependent minors in household: (1) Yes, (0) No, (100000) No dependent minors in household}
#'   \item{LAT}{Latitude of the place or residence, geocoded at the nearest major intersection or centroid of 6-digit postal area}
#'   \item{LONG}{Longitude of the place or residence, geocoded at the nearest major intersection or centroid of 6-digit postal area}
#'   \item{DAUID}{Unique ID of the dissemination area of place of residence according to the 2006 census of Canada}
#'   \item{mhi}{Median household income of the dissemination area of place of residence according to the 2006 census of Canada}
#'   \item{dwell_den}{Dwelling density in the dissemination area of the place of residence in $1/km^2$}
#'   \item{lum}{Entropy of the land use mix}
#'   \item{st_den}{Street density in the dissemination area of the place of residence in $km/km^2$}
#'   \item{inter_den}{Intersection density in the dissemination area of the place of residence in $1/km^2$}
#'   \item{SF_P_ratio}{Ratio of surface of plots to built area}
#'   \item{side_density}{Sidewalk density in the dissemination area of the place of residence in $km/km^2$}
#'   \item{Shelters_SD}{Response to statement "Shelters and other public transportation facilities that I commonly use are of good quality": 1 if Strongly Disagree, 0 otherwise}
#'   \item{Shelters_D}{Response to statement "Shelters and other public transportation facilities that I commonly use are of good quality": 1 if Disagree, 0 otherwise}
#'   \item{Shelters_A}{Response to statement "Shelters and other public transportation facilities that I commonly use are of good quality": 1 if Agree, 0 otherwise}
#'   \item{Shelters_SA}{Response to statement "Shelters and other public transportation facilities that I commonly use are of good quality": 1 if Strongly Agree, 0 otherwise}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name mc_commute.csv
#' @usage data(mc_commute_long)
#' @source Whalen, K. E., P\'{a}ez, A., & Carrasco, J. A. (2013). Mode choice of university students commuting to school and the role of active travel. Journal of Transport Geography, 31, 132-142. (https://doi.org/10.1016/j.jtrangeo.2013.06.008)
#' @examples
#'  library(readr)
#'  mc_commute <- read_csv(system.file("extdata", "mc_commute.csv", package = "discrtr"))
NULL

#' McMaster Modality Data Set.
#'
#' A dataset containing information about _students_, _staff_, and _faculty_ commuting to McMaster University.
#' Data were collected by means of a travel survey in the fall of 2010. Respondents were asked about their mode
#' of travel to McMaster University, in Hamilton, Canada. They were also asked about the modes available
#' to them. The data set also contains relevant attributes about the respondents. The format of the table is wide,
#' with each row representing an individual respondent. These variables were augmented with information from the
#' 2011 Census of Canada and land use information from local sources.
#'
#' @format A data frame with 4,146 rows and 37 variables:
#' \describe{
#'   \item{id}{Unique identifier for respondents}
#'   \item{choice}{Mode of transportation chosen: Active Travel (Cycle/Walk), HSR (local transit), Car, GO (regional transit)}
#'   \item{LAT}{Latitude of the place or residence, geocoded at the nearest major intersection or centroid of 6-digit postal area}
#'   \item{LONG}{Longitude of the place or residence, geocoded at the nearest major intersection or centroid of 6-digit postal area}
#'   \item{shared_vehicle}{Indicator variable for having individual access to a private car (i.e., car shared with other household members): Yes/No}
#'   \item{bicycle}{Indicator variable for owning a bicycle: Yes/No}
#'   \item{gender}{Woman/Man}
#'   \item{age}{Age in years}
#'   \item{status}{Indicator variable for status at McMaster: Staff or Faculty/Student}
#'   \item{care_giver}{Indicator variable for being primary care giver for any minors in the household: Yes/No}
#'   \item{modality}{Indicator variable for number of available modes: One Mode/Two Modes/Three Modes/Four Modes}
#'   \item{Boring}{Response to statement "Traveling is boring" as factor: Strongly Disagree, Disagree, Neutral, Agree, Strongly Agree}
#'   \item{Buses_Comfortable}{Response to statement "The buses I usually travel in are comfortable" as factor: Strongly Disagree, Disagree, Neutral, Agree, Strongly Agree}
#'   \item{Clean_Fuel}{Response to statement "To improve the environment, I am willing to pay a little more to use a hybrid, electric or other clean fuel vehicle" as factor: Strongly Disagree, Disagree, Neutral, Agree, Strongly Agree}
#'   \item{Limit_Driving}{Response to statement "I limit my auto travel to help improve congestion and the environment" as factor: Strongly Disagree, Disagree, Neutral, Agree, Strongly Agree}
#'   \item{Productive_Time}{Response to statement "I use my commute time productively" as factor: Strongly Disagree, Disagree, Neutral, Agree, Strongly Agree}
#'   \item{Safe_Cycle}{Response to statement "I feel safe and secure to cycle around town" as factor: Strongly Disagree, Disagree, Neutral, Agree, Strongly Agree}
#'   \item{Shops_Services}{Response to statement "Having shops and services within walking distance of my home is important to me" as factor: Strongly Disagree, Disagree, Neutral, Agree, Strongly Agree}
#'   \item{Someone_Else}{Response to statement "Usually, I'd rather have someone else do the driving" as factor: Strongly Disagree, Disagree, Neutral, Agree, Strongly Agree}
#'   \item{Stuck_Traffic}{Response to statement "Getting stuck in traffic doesn't bother me too much" as factor: Strongly Disagree, Disagree, Neutral, Agree, Strongly Agree}
#'   \item{Transition}{Response to statement "My commute trip is a useful transition between home and school" as factor: Strongly Disagree, Disagree, Neutral, Agree, Strongly Agree}
#'   \item{Travel_Alone}{Response to statement "I like traveling alone" as factor: Strongly Disagree, Disagree, Neutral, Agree, Strongly Agree}
#'   \item{Travel_Tiring}{Response to statement "Traveling is generally tiring for me" as factor: Strongly Disagree, Disagree, Neutral, Agree, Strongly Agree}
#'   \item{Wasted_Time}{Response to statement "Traveling is generally tiring for me" as factor: Strongly Disagree, Disagree, Neutral, Agree, Strongly Agree}
#'   \item{Rate_Immigrant}{Proportion of inmigrants to total population in Dissemination Area}
#'   \item{Rate_Non_Canadian}{Proportion of non-Canadian residents to total population in Dissemination Area}
#'   \item{Rate_Labor}{Proportion of residents in Dissemination Area who are in the labor force}
#'   \item{Rate_Unemployment}{Unemployment rate in Dissemination Area}
#'   \item{Rate_Married}{Proportion of families headed by a married couple to total population in Dissemination Area}
#'   \item{Mean_Age}{Mean age of residents in Dissemination Area in years}
#'   \item{Mean_Children}{Mean number of children per family in Dissemination Area}
#'   \item{Median_HH_Income}{Median family income in Dissemination Area in $10,000}
#'   \item{LITA}{Transit access index – combination of capacity, frequency, and coverage of service (Wiley et al., 2011)}
#'   \item{LUM}{Entropy-based land use mix index in Dissemination Area: lower values mean more homogenous land uses, higher values greater mix of uses}
#'   \item{MAC_DISTANCE}{Network distance from place of residence to McMaster University in km}
#'   \item{POPULATION_DENSITY}{Population density in Dissemination Area in people/sq.km}
#'   \item{SF_P_RATIO}{Ratio of building footprint to parcel area in Dissemination Area: a measure of density of development}
#' }
#'
#' @docType data
#' @keywords datasets
#' @name mc_modality
#' @usage data(mc_modality)
#' @source Lavery, T., P\'{a}ez, A., & Kanaroglou, P.S. (2013). Driving out of choices: An investigation of transport modality in a university sample. Transportation Research Part A: Policy and Practice, 57:37-46 (https://doi.org/10.1016/j.tra.2013.09.010)
#' @examples
#'  data(mc_modality)
#'  summary(mc_modality)
"mc_modality"

#' Hamilton City boundaries and urban types
#'
#' Classification of regions by type: urban, suburban, and rural. This is based on the rural boundaries of the city, and the planning regions.
#'
#'#' @format A simple features data frame with 2 rows and 2 variables:
#' \describe{
#'   \item{Type}{Classification of the region: "Urban", "Suburban", "Rural"}
#'   \item{geometry}{Geometry of polygons}
#' }
#'
#' @docType data
#' @keywords datasets
#' @keywords transportation
#' @name urban_types
#' @usage data(urban_types)
"urban_types"

##############################################
##                TEMPLATE                  ##
##############################################

#' discrtr template.
#'
#' Template for creating a computational notebook for use with Discrete Choice Analysis with R
#'
#' @format An R Markdown file
#'
#' @keywords template
#' @name discrtr_template
discrtr_template <- function(){
  rmdformats::robobook()
  }
