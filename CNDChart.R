library(ggplot2)

# Load the data
crashes <- read.csv("Traffic_Crashes_-_Crashes.csv")

# Calculated the total number of crashes and deaths
total_crashes <- sum(crashes$CRASHES)
total_deaths <- sum(crashes$DEATHS)

#Created Data Frame for Chart
data <- data.frame(
  Type = c("Crashes", "Deaths"),
  Count = c(total_crashes, total_deaths)
)

#Bar Chart
ggplot(data, aes(x = Type, y = Count)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Total Crashes and Deaths",
       x = "Type", y = "Count")
