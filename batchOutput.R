library(readr)
library(rmarkdown)
library(ggplot2)
library(dplyr)
dataset <- read_csv("data/sampledata.csv")

for (id in unique(dataset$ORGID15))
{
  render("pdfReports.Rmd",output_file = paste0('report', id, '.pdf'))
}