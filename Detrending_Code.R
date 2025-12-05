library(EWSmethods)
library(readr)
library(tictoc)

tic()

# Load data
data <- read.csv("D:/Gollarani/Panel/Forward_MAF_Traj1.csv", header = FALSE)

m <- 1
n <- 910

# Time + at least TWO numeric columns (value1, value2)
ts_seg <- data.frame(
  t      = seq(m, n),        # synthetic time index
  value1 = data[m:n, 1],     # original series
  value2 = data[m:n, 1]      # duplicate to satisfy detrend_ts()
)

# Detrend with gaussian kernel
#combined_ts <- detrend_ts(
 # data      = ts_seg,
#  method    = "gaussian",
 # bandwidth = NULL   
#)

# Detrend with loess smoothing
combined_ts <- detrend_ts(
  data      = ts_seg,
  method    = "loess",
  span      =  1,
  degree    =  2
)

out <- combined_ts
outpath <- "D:/Gollarani/Panel/MAF_Lo.csv"
write.csv(out, file = outpath, row.names = FALSE)

toc()
