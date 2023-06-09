# Lake-Huron-Water-Level-Analysis:-Time-Series-Decomposition,-Model-Selection,-and-Forecasting-with-ARMA-Methods-and-itsmr-Package
In this thorough investigation, we shall meticulously analyze the "lake" time series from the "itsmr" package, which represents the water level of Lake Huron (reduced by 570 feet) from 1875 to 1972. Our goals include: 
1) Transforming the time series through classical decomposition and differencing, potentially utilizing natural logarithms .
2) Plotting the original and transformed time series.
3) Visualizing autocorrelations (ACF) and partial autocorrelations (PACF) of the transformed series.
4) Exploring various models employing Burg's algorithm, Yule-Walker's algorithm, maximum likelihood estimation (arma), and autofit.
5) Deriving corresponding equations for each model's time series {Xt}.
6) Identifying the optimal model via the AICC criterion.
7) Assessing stationarity of the optimal model's residuals using the test() function in "itsmr".
8) Forecasting the subsequent ten values of the time series employing the forecast() function from "itsmr".


## Contact Information

If you require access to the code in this repository, please reach out to me at g.papageorgiou.contact@gmail.com or on [LinkedIn](https://www.linkedin.com/in/giorgos-papageorgiou-3b27a9221), and I will be happy to assist you.
