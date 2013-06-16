require 'rubygems'
require 'rsruby'
#Rcommand kicked
r=RSRuby::instance
r.eval_R(<<-RCOMMAND)
 X<-read.table("/home/juzu/r-dev/Book1.csv",header=TRUE,sep=",",na.strings="NA",dec=".",strip.white=TRUE);
 plot(X[,c("seq")],X[,c("USD")])
 pdf("/tmp/hoge.pdf")
 plot(X[,c("seq")],X[,c("USD")])
 dev.off()
RCOMMAND
