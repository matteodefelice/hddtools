% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GRDC.R
\name{tsGRDC}
\alias{tsGRDC}
\title{Interface for the Global Runoff Data Centre database of Monthly Time Series}
\usage{
tsGRDC(stationID, plotOption = FALSE)
}
\arguments{
\item{stationID}{7 string that identifies a station, GRDC station number is called "grdc no" in the catalogue.}

\item{plotOption}{boolean to define whether to plot the results. By default this is set to TRUE.}
}
\value{
The function returns a list of 6 tables: 
\itemize{
  \item{\strong{LTVD}}{This is a table containing seasonal variability of river discharge based on original daily data. It is made of 8 columns:}
    \itemize{
      \item{LTV_LMM_Monthly__MM}{: calendar month}
      \item{LTV_LDM_Day__Value}{: lowest daily discharge value in each calendar month in the given time series, calculated from lowest values of each calendar month in consecutive calendar years.}
      \item{LTV_LDM_Day__YYYY_MM_DD}{: Date of occurrence of lowest daily discharge}
      \item{LTV_MDM_Day__MM}{: calendar month}
      \item{LTV_MDM_Day__Value}{: mean of daily discharge values in each calendar month in the given time series, calculated from monthly means of each calendar month in consecutive calendar years.}
      \item{LTV_HDM_Day__MM}{: calendar month}
      \item{LTV_HDM_Day__Value}{: highest daily discharge value in each calendar month in the given time series, calculated from highest values of each calendar month in consecutive calendar years.}
      \item{LTV_HDM_Day__YYYY_MM_DD}{: Date of occurrence of highest daily discharge}
    }
  \item{\strong{LTVM}}{This is a table containing seasonal variability of river discharge based on monthly data. It is made of 8 columns:}
    \itemize{
      \item{LTV_LMM_Monthly__MM}{: calendar month}
      \item{LTV_LMM_Monthly__Value}{: lowest monthly discharge value in each calendar month in the given time series, calculated from lowest values of each calendar month in consecutive calendar years.}
      \item{LTV_LMM_Monthly__YYYY_MM_DD}{: Date of occurrence of lowest monthly discharge}
      \item{LTV_MMM_Month__MM}{: calendar month}
      \item{LTV_MMM_Month__Value}{: mean of monthly discharge values in each calendar month in the given time series, calculated from values of each calendar month in consecutive calendar years..}
      \item{LTV_HMM_Month__MM}{: calendar month}
      \item{LTV_HMM_Month__Value}{: highest monthly discharge value in each calendar month in the given time series, calculated from highest values of each calendar month in consecutive calendar years.}
      \item{LTV_HMM_Month__YYYY_MM_DD}{: Date of occurrence of highest monthly discharge}
    }
\item{\strong{PVD}}{This is a table containing ... It is made of 7 columns:}
  \itemize{
    \item{LQ_Day__Value}{: lowest daily discharge value in the given time series, calculated from lowest values of consecutive calendar years.}
    \item{LQ_Day__YYYY_MM_DD}{: Date of occurrence of lowest daily discharge}
    \item{MLQ_Day__Value}{: mean of lowest daily discharge values in the given time series, calculated from lowest values of consecutive calendar years.}
    \item{MQ_Day__Value}{: mean of daily discharge values in the given time series, calculated from yearly means of consecutive calendar years.}
    \item{MHQ_Day__Value}{: mean of highest daily discharge values in the given time series, calculated from highest values of consecutive calendar years.}
    \item{HQ_Day__Value}{: highest daily discharge value in the given time series, calculated from highest values of consecutive calendar years.}
    \item{HQ_Day__YYYY_MM_DD}{: Date of occurrence of highest daily discharge}
  }
\item{\strong{PVM}}{This is a table containing ... It is made of 5 columns:}
  \itemize{
    \item{LQ_Month__Value}{: lowest monthly discharge value in the given time series, calculated from lowest yearly values of consecutive calendar years.}
    \item{LQ_Month__YYYY_MM}{: month of first occurence of lowest monthly discharge}
    \item{MQ_Month__Value}{: mean of monthly discharge values in the given time series, calculated from yearly means of consecutive calendar years.}
    \item{HQ_Month__Value}{: highest monthly discharge value in the given time series, calculated from highest yearly values of consecutive calendar years.}
    \item{HQ_Month__YYYY_MM}{: month of first occurence of highest monthly discharge}
  } 
\item{\strong{YVD}}{This is a table containing ... It is made of 12 columns:}
  \itemize{
    \item{Year_Min_Day__YYYY}{: calender year}
    \item{Year_Min_Day__Value}{: Lowest daily discharge value in the given calendar year, calculated from 12 lowest monthly values in the year in question.}
    \item{Year_Min_Day__YYYY_MM_DD}{:  date of first occurence}
    \item{Year_Mean_Min_Day__YYYY}{: calender year}
    \item{Year_Mean_Min_Day__Value}{: mean of lowest daily discharge values in the given calendar year, calculated from 12 lowest monthly values in the year in question.}
    \item{Year_Mean_Day__YYYY}{: calender year}
    \item{Year_Mean_Day__Value}{: Mean of daily discharge values in the given calendar year, calculated from 12 monthly means in the year in question.}
    \item{Year_Mean_Max_Day__YYYY}{: calender year}
    \item{Year_Mean_Max_Day__Value}{: mean of highest daily discharge values in the given calendar year, calculated from 12 highest monthly values in the year in question.}
    \item{Year_Max_Day__YYYY}{: calender year}
    \item{Year_Max_Day__Value}{: highest daily discharge value in the given calendar year, calculated from 12 highest monthly values in the year in question.}
    \item{Year_Max_Day__YYYY_MM_DD}{: date of first occurence}
  }
\item{\strong{YVM}}{This is a table containing ... It is made of 8 columns:}
  \itemize{
    \item{Year_Min_Month__YYYY}{: calender year}
    \item{Year_Min_Month__Value}{: lowest monthly discharge value in the given calendar year, calculated from 12 monthly values in the year in question.}
    \item{Year_Min_Month__YYYY_MM}{: month of first occurence}
    \item{Year_Mean_Month__Value}{: mean of monthly discharge values in the given calendar year, calculated from 12 monthly values in the year in question.}
    \item{Year_Max_Month__YYYY}{: calender year}
    \item{Year_Max_Month__Value}{: highest monthly discharge value in the given calendar year, calculated from 12 monthly values in the year in question.}
    \item{Year_Max_Month__YYYY_MM}{: month of first occurence}
  }
}
}
\description{
This function interfaces the Global Runoff Data Centre monthly mean daily discharges database.
}
\details{
Please note that not all the GRDC stations listed in the catalogue have monthly data available.
}
\examples{
\dontrun{
  Adaitu <- tsGRDC(stationID = "1577602")
  Adaitu <- tsGRDC(stationID = catalogueGRDC()$grdc_no[1000],
                   plotOption = TRUE)
}

}
\author{
Claudia Vitolo
}
