#Feature Engineering - Family members
# This means chopping, and combining different attributes to squeeze more value from the data.

# combine the sibsp and parch variables to form the family size
combi$FamilySize <- combi$SibSp + combi$Parch + 1

# combine last names with the families
combi$Surname <- sapply(combi$Name, FUN=function(x) {strsplit(x, split='[,.]')[[1]][1]})

# create a family id 
combi$FamilyID <- paste(as.character(combi$FamilySize), combi$Surname, sep="")

# create family size buckets
combi$FamilyID[combi$FamilySize <= 2] <- 'Small'

# observe the result
table(combi$FamilyID)

