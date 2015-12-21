library('ggplot2')
library('ggthemes')

setEPS()
postscript("benchmarks.eps", width=6, height=4)

data <- read.csv('benchmarks.csv', header=TRUE)
qplot(Principals, Check, data=data, group=Delegations, linetype=Delegations, geom="line") +
  scale_x_log10(breaks=c(10,100,500,1000)) +
  scale_y_log10(breaks=c(1,10,100)) +
  ylab("Check time (s)") +
  geom_point(size=1.1) +
  geom_rug() +
  theme_tufte(ticks=F, base_family="Helvetica")

dev.off()

