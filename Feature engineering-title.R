#Feature Engineering
# This means chopping, and combining different attributes to squeeze more value from the data.

# Inpect the name titles 
train$Name[1]

# combine all names from train and test data 
# add a new fake column to make it same as the train data, otherwise there would be an error. 
test$Survived <- NA

# create a new dataset combi with both these datas
combi <- rbind(train, test)
combi$Name <- as.character(combi$Name)
combi$Name[1]

# experiment with the first row 

# split the names for titles
strsplit(combi$Name[1], split='[,.]')
# refine the split
strsplit(combi$Name[1], split='[,.]')[[1]]
# get the titles
strsplit(combi$Name[1], split='[,.]')[[1]][2]

# apply this to the whole dataset using the sapply function
combi$Title <- sapply(combi$Name, FUN=function(x) {strsplit(x, split='[,.]')[[1]][2]})

# strip the spaces
combi$Title <- sub(' ', '', combi$Title)

#Display the titles
table(combi$Title)

# consolidate similar ones which are noted differently
combi$Title[combi$Title %in% c('Mme', 'Mlle')] <- 'Mlle'

# group/consolidate similar ones to create a common bucket
combi$Title[combi$Title %in% c('Capt', 'Don', 'Major', 'Sir')] <- 'Sir'

combi$Title[combi$Title %in% c('Dona', 'Lady', 'the Countess', 'Jonkheer')] <- 'Lady'

# convert the column 'title' to factors so that they can be cateogorized.
combi$Title <- factor(combi$Title)


