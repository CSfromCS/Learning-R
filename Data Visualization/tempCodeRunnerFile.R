
for (i in 1:ncol(attitude)) {
  boxplot(attitude[,i], main=names(attitude)[i], xlab=names(attitude)[i])
}