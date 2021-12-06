#' @keywords internal
"_PACKAGE"

## usethis namespace: start
## usethis namespace: end
NULL

#' McMaster Commuting Dataset (wide format).
#'
#' A dataset containing information about commuting to McMaster University. Data were collected
#' by means of a travel survey in the fall of 2010. Respondents were asked about their mode of
#' travel to McMaster University, in Hamilton, Canada. They were also asked about the modes available
#' to them. The characteristics of the trips were self-reported or imputed. The dataset also contains
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
#'   \item{gender}{Female/Male}
#'   \item{age}{Age in years}
#'   \item{shared}{Indicator variable for living in shared accommodations}
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
#' @keywords datasets
#' @name mc_commute_wide
#' @usage data(mc_commute_wide)
#' @source Whalen, K. E., PÃ¡ez, A., & Carrasco, J. A. (2013). Mode choice of university students commuting to school and the role of active travel. Journal of Transport Geography, 31, 132-142. (https://doi.org/10.1016/j.jtrangeo.2013.06.008)
#' @examples
#'  data(mc_commute_wide)
#'  summary(mc_commute_wide$choice)
"mc_commute_wide"

#' McMaster Commuting Dataset (long format).
#'
#' A dataset containing information about commuting to McMaster University. Data were collected
#' by means of a travel survey in the fall of 2010. Respondents were asked about their mode of
#' travel to McMaster University, in Hamilton, Canada. They were also asked about the modes available
#' to them. The characteristics of the trips were self-reported or imputed. The dataset also contains
#' relevant attributes about the respondents. The format of the table is long, with each row representing
#' a choice situation.
#'
#' @format An indexed data frame of class dfidx with 5500 rows and 62 variables:
#' \describe{
#'   \item{id}{Unique identifier for respondents}
#'   \item{choice}{Mode of transportation chosen: Cycle, Walk, HSR (local transit), Car}
#'   \item{parking}{Indicator variable for holding a university parking permit: Yes/No}
#'   \item{vehind}{Indicator variable for having individual access to a private car (i.e., car not shared with other household members): Yes/No}
#'   \item{gender}{Female/Male}
#'   \item{age}{Age in years}
#'   \item{shared}{Indicator variable for living in shared accommodations}
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
#' @source Whalen, K. E., PÃ¡ez, A., & Carrasco, J. A. (2013). Mode choice of university students commuting to school and the role of active travel. Journal of Transport Geography, 31, 132-142. (https://doi.org/10.1016/j.jtrangeo.2013.06.008)
#' @examples
#'  data(mc_commute_long)
#'  library(dfidx)
#'  print(mc_commute_long, n = 12)
"mc_commute_long"

#' McMaster Commuting Dataset (csv file).
#'
#' A delimited text file containing information about commuting to McMaster University. Data were collected
#' by means of a travel survey in the fall of 2010. Respondents were asked about their mode of
#' travel to McMaster University, in Hamilton, Canada. They were also asked about the modes available
#' to them. The characteristics of the trips were self-reported or imputed. The dataset also contains
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
#'   \item{gender}{Indicator variable for gender: (1) Female, (0) Male}
#'   \item{age}{Age in years}
#'   \item{solo}{Indicator variable for living in solo accommodations: (1) Yes, (0) No}
#'   \item{shared}{Indicator variable for living in shared accommodations: (1) Yes, (0) No}
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
#' @source Whalen, K. E., PÃ¡ez, A., & Carrasco, J. A. (2013). Mode choice of university students commuting to school and the role of active travel. Journal of Transport Geography, 31, 132-142. (https://doi.org/10.1016/j.jtrangeo.2013.06.008)
#' @examples
#'  library(readr)
#'  mc_commute <- read_csv(system.file("extdata", "mc_commute.csv", package = "discrtr"))
NULL
