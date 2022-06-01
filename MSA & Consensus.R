setwd("C:/Users/sophi/Documents/Universität/6. Semester/Bioinformatik")

data <- read.table("human_ACTG_Isoforms.txt", header= F, sep = "\t")

data_split <- strsplit(data$V1,"")
data_split

data_split_df <- data.frame(data_split)
data_split_df

data_split_transpose <- t(data_split_df)

MSA <- as.data.frame(data_split_transpose)

for (i in 1:length(MSA)) {
  print(c(sort(table(MSA[[i]]),decreasing=TRUE)[1], i))
}


