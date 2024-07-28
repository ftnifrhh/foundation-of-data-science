# VISUALIZATION 4 :  IC vs Male/Female

data <- read.csv("insurance.csv", fileEncoding = "UTF-8-BOM", na.strings = '..')

#barplot
ggplot(data, aes(x = charges, fill = sex)) +
  geom_histogram(position = "identity", alpha = 0.5, bins = 30) +
  scale_fill_manual(values=c("male"="blue","female"="orange")) +
  labs(title = "Histogram: Insurance Charges by Gender", x = "Insurance Charges", y = "Frequency")

#scatter plot
ggplot(data, aes(x = sex, y = charges, color = sex)) +
  geom_point(position = position_jitter(width = 0.2)) +
  scale_fill_brewer(palette="Dark2") +
  labs(title = "Scatter Plot: Insurance Charges by Gender", x = "Gender", y = "Insurance Charges")

#boxplot
ggplot(data, aes(x = sex, y = charges, fill = sex)) +
  geom_boxplot() +
  scale_fill_brewer(palette="Dark2") +
  labs(title = "Boxplot: Insurance Charges by Gender", x = "Gender", y = "Insurance Charges")
