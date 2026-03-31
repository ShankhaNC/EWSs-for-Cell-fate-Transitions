(1) Download the datasets & the codes marked by the unique Fig number to reproduce the very same of Chattopadhyay & Gupta 'Do multivariate measures presage cell-state transitions in the Notch pathway?' paper.
(2) The Stocha_Simu_Gillespie.m code will generate the stochastic trajectory.
(3) Then, use the Detrending_Code.R code to detrend that stochastic trajectory using Gaussian kernel smoothing, LOESS filtering, first differencing or linear detrending as you wish. This will give you the computed residuals, free from nonstationarities.
(4) Finally, use EWSmethods toolbox (Duncan O'Brien; https://duncanobrien.github.io/EWSmethods/) to generate any multivariate early warning signal of your choice from the residuals.
