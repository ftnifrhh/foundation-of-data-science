#VISUALIZATION 3:IC vs no. of children (make it separately for male and female)

library(ggplot2)
data <- read.csv("insurance.csv", fileEncoding = "UTF-8-BOM", na.strings = '..')
dage<-data[,c(2,4,7)]

#boxplot(1)
ggplot(dage, aes(x = sex, y = charges, fill = sex)) +
  geom_boxplot() +
  scale_fill_brewer(palette = "Greens") +  # Corrected the typo
  geom_jitter(shape = 16, position = position_jitter(0.2)) +
  labs(title = "Charges vs Sex", y = 'Charges', x = 'No of Children') +  # Updated the labels
  facet_wrap(~children, nrow = 1)

#boxplot(2)
ggplot(dage, aes(x = factor(children), y=charges, fill=factor(children)))+
  geom_boxplot()+
  scale_fill_brewer(palette="Dark2")+
  geom_jitter(shape=16, position=position_jitter(0.2))+
  labs(title = "Effect of No Of Children on Charges",y="charges",x=" children ")+facet_wrap(~sex,ncol=2)

  



