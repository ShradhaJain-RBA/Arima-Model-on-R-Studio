sa <-read.csv("/Users/anantjain/Documents/PA Arima/adani2.csv")
sa
sa = ts(sa,start=2002,frequency = 188)
sa
plot(sa)
acf(sa)
pacf(sa)
#build the model
arima(sa,order = c(1,1,0))
arima(sa,order = c(1,1,1))
arima(sa,order = c(0,1,1))
arima(sa,order = c(2,1,2))
#seasonal component


arima(sa,seasonal =list(order = c(1,1,1),period = 1))

fit <- arima(sa,order = c(1,1,1),seasonal =list(order = c(1,1,1),period = 1))
predict(fit,n.ahead=10)
