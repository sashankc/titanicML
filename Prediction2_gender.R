# Prediction based on gender
# predict that only females survived
test$Survived <- 0
test$Survived[test$Sex == 'female'] <- 1