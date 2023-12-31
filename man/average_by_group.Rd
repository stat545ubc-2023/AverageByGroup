% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/average_by_group.R
\name{average_by_group}
\alias{average_by_group}
\title{Documentation for average_by_group function}
\usage{
average_by_group(data, group, numeric_category, na.rm = FALSE, ...)
}
\arguments{
\item{data}{character (1) string, This is the input dataset that the user is working with. I named this argument because it is where the user inputs the dataset they are working with.}

\item{group}{character (1) string, This is the categorical variable that the user wants to group the dataset by. I names this as group because it specifies the group or categorical variable the user wants to categorize the data by.}

\item{numeric_category}{character (1) string, This is the numeric variable that the user wants to find the mean of, grouped by the 'group' variable. I names this numeric_category because it lets the user know that this is the numerical category that the mean will be calculated from.}

\item{na.rm}{logical value, This is how NA values will be handled in the data. By default, it is set to FALSE, but the user can change the input}

\item{...}{This allows the user to specify any additional inputs to be used within the mean function}
}
\value{
tibble, returns a tibble with the data summarized by group and by the average of a numeric variable within the groups.
}
\description{
This function is meant to help summarize the dataset, by essentially taking in a categorical variable that the user wants to group the data by, and then calculating the mean of a specific numeric variable that the user inputs.
}
\examples{
# average_by_group(vancouver_trees, genus_name, diameter)
}
