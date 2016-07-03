# Analyse of the data based on gender of the passanger

# summary of male versus female
summary(train$Sex)

# proportion of male versus female that survived
prop.table(table(train$Sex, train$Survived))

# seperating group, row based proportions 
prop.table(table(train$Sex, train$Survived),1)


