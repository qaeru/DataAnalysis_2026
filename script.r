# source file
write.csv(iris, "my_data.csv", row.names = FALSE)

# data from file
my_data <- read.csv("my_data.csv")

# simple analysis
summary_info <- summary(my_data)
print(summary_info)

# graph
png("iris_plot.png")
plot(my_data$Sepal.Length, my_data$Sepal.Width, 
     col = as.factor(my_data$Species), 
     main = "Iris Dataset Analysis",
     xlab = "Sepal Length",
     ylab = "Sepal Width")
dev.off()

print("Complete!")
