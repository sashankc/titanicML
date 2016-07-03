# Analysis based on Fare and gender, assuming that the first class passangers got a preference to get on the lifeboats
# Create fare bins less than $10, between $10 and $20, $20 to $30 and more than $30 
# and store it to a new variable

train$Fare2 <- '30+'
train$Fare2[train$Fare < 30 & train$Fare >= 20] <- '20-30'
train$Fare2[train$Fare < 20 & train$Fare >= 10] <- '10-20'
train$Fare2[train$Fare < 10] <- '<10'

# run aggregating based on fare and gender
aggregate(Survived ~ Fare2 + Pclass + Sex, data=train, FUN=function(x) {sum(x)/length(x)})