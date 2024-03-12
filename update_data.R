print('up updated')
if (!requireNamespace('hoopR', quietly = TRUE)){
  install.packages('hoopR')
}
library('hoopR')

mbb_pbp <-  hoopR::load_mbb_pbp(2024)

dt<-paste0(toString(Sys.time()[1]))
dt<-gsub(" ", "", dt)
dt<-gsub(":", "", dt)
dt<-substr(dt,1,16)
write.csv(head(mbb_pbp),paste0("home/r-env/data_", dt, ".csv"))
