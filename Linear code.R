library(astsa)
library(itsmr)


#Transform the time series using (a) “classical decomposition” (decompose to trend and/or seasonal components)
tre = trend(lake,2)
lake_cd = ts(lake - tre)

#Transform the time series using (b) “differencing”
lake_diff = diff(lake, lag = 2)


#Plot the original time series and the transformed time series (obtained by methods (a) and (b) above).
plot.ts(lake)

plot.ts(lake_cd)

plot.ts(lake_diff)


#Plot the autocorrelations (ACF) and the partial autocorrelations (PACF) of the transformed time series (obtained by methods (a) and (b) above).
plota(lake)

plota(lake_cd)

plota(lake_diff)


#Try different models, e.g. by using Burg’s algorithm, Yule-Walker’s algorithm, maximum likelihood estimation (arma) and autofit.

lake_burg = burg(lake, 3)
lake_burg

lakecd_burg = burg(lake_cd, 2)
lakecd_burg

lakediff_burg = burg(lake_diff, 3)
lakediff_burg

lake_yw = yw(lake, 2)
lake_yw

lakecd_yw = yw(lake_cd, 2)
lakecd_yw

lakediff_yw = yw(lake_diff, 3)
lakediff_yw

lake_arma = arma(lake,1,1)
lake_arma

lakecd_arma = arma(lake_cd,2,0)
lakecd_arma

lakediff_arma = arma(lake_diff,2,1)
lakediff_arma


lake_auto = autofit(lake)
lake_auto

lakecd_auto = autofit(lake_cd)
lakecd_auto

lakediff_auto = autofit(lake_diff)
lakediff_auto

# Check for stationarity of the residuals of the optimal model (by using test() in itsmr).
M = c("trend",2)
ee = Resid(lake, M, lakecd_arma)
test(ee)

# Use “forecast()” (in itsmr) to forecast the future 10 values of the time series.
forecast(lake, M, lakecd_arma)

