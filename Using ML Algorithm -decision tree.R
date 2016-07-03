# Using the Decision Tree ML algorithm

# import the library
library(rpart)

# call rpart method
fit <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked,
             data=train,
             method="class")

# plot the output
plot(fit)

text(fit)

