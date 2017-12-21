Sys.setenv(RSTUDIO_PANDOC="C:/Program Files/RStudio/bin/pandoc") # Need to explicitly define pandoc location for Rscript

library(readr)
library(rmarkdown)
library(ggplot2)
library(dplyr)

# Read the dataset

dataset <- read_csv("data/sampledata.csv")

# Loop to generate PDF files for all unique ministries in the dataset

for (id in unique(dataset$ORGID15))
{
  render("pdfReports.Rmd",output_file = paste0('report', id, '.pdf'))
}
