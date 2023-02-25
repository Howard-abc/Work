# Load the ggplot2 library
library(ggplot2)

#Read
crash_data <- read.csv("Traffic_Crashes_-_Crashes.csv")

# Data frame with the count of crashes and deaths for each year
crash_summary <- aggregate(cbind(Crashes, Deaths) ~ Year, crash_data, sum)

# Bar plot of crashes and deaths by year
p <- ggplot(crash_summary, aes(x = Year)) +
  geom_bar(aes(y = Crashes), stat = "identity", fill = "steelblue") +
  geom_bar(aes(y = Deaths), stat = "identity", fill = "red") +
  labs(x = "Year", y = "Count", title = "Crashes and Deaths by Year")


#Save and print plot 
ggsave("crash_summary.png", plot = p)

