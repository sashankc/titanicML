# get a better visualization of the output

# install related libraries
install.packages('rattle')
install.packages('rpart.plot')
install.packages('RColorBrewer')
library(rattle)
library(rpart.plot)
library(RColorBrewer)

# get the fancy plot 
fancyRpartPlot(fit)