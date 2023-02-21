#Data Pulled
crashes <- read.csv("Traffic_Crashes_-_Crashes.csv")

# Total # of crashes and deaths
total_crashes <- sum(crashes$CRASHES)
total_deaths <- sum(crashes$DEATHS)

cat("Total crashes:", total_crashes, "\n")
cat("Total deaths:", total_deaths, "\n")
