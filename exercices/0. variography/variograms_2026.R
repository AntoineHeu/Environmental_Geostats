#R 

# Load necessary libraries
library(ggplot2)
setwd("C:/Users/a.heude/")
data_co2<-read.csv("CRG_Data_sGs_light.csv", sep = ";")


#print some of the values
colnames(data_co2) <- c("x", "y", "FCO2")
print(colnames(data_co2))
summary(data_co2$FCO2)

calculate_distance2D <- function(point1, point2)

calculate_semivariance <- function (point1, point2)



calculate_rawVario <- function (data){
  pairs_distances <- vector()
  pairs_semivariances <- vector()
  for (i in 1:(length(data$x)-1)) {
    for (j in (i+1): length(data$x)) {
      dist_value <- 
      semi_variance_value <- 
      pairs_distances <- c(pairs_distances, dist_value)
      pairs_semivariances <- c(pairs_semivariances, semi_variance_value)
    }
  }
  df = data.frame("pairs_distances" = pairs_distances, "pairs_semivariances" = pairs_semivariances)
  return (df)
}

rawvario <- calculate_rawVario(data_co2)
print(rawvario)


kept_distances <- seq(0, 150, by = 5)

averaged_variogram <- sapply(kept_distances, function(dist) {
  
})

result_df <- data.frame('lag_distance' = kept_distances, 'averaged_semivariance' = averaged_variogram)
result_df <- na.omit(result_df)

df_variogram <- data.frame('Lag_Distance' = kept_distances, 'Semivariance' = averaged_variogram)
ggplot(df_variogram, aes(x = Lag_Distance, y = Semivariance)) +
  geom_point(color = 'blue') +
  labs(x = 'Lag Distance', y = 'Semivariance', title = 'Variogram') +
  theme_minimal()

print(var(data_co2$FCO2))
# ggplot(rawvario, aes(x = pairs_distances, y = pairs_semivariances)) +
#   geom_point(color = 'blue') +
#   labs(x = 'Pairs Distances', y = 'Semivariance', title = 'Raw Variogram') +
#   theme_minimal()
  

