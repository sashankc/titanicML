# Analysis based on age, since children were first to get into a lifeboat

# get a distribution of ages 
summary(train$Age)

# create a child column and add a marker for those under 18 years of age
train$Child <- 0
train$Child[train$Age < 18] <- 1

aggregate(Survived ~ Child + Sex, data=train, FUN=sum)

aggregate(Survived ~ Child + Sex, data=train, FUN=length)

# aggregating based on gender and age, getting a proportion 
aggregate(Survived ~ Child + Sex, data=train, FUN=function(x) {sum(x)/length(x)})