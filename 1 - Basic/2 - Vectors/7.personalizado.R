# Temperatures per day of week:
max_temperatures <- c(17, 16, 21, 24, 21, 09, 16)
min_temperatures <- c(07, 08, 11, 12, 02, 02, 06)

# Days of the week
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")

names(max_temperatures) <- days_vector
names(min_temperatures) <- days_vector

# Calculate middle temperature per day.
middle_temperatures <- (max_temperatures + min_temperatures) / 2

print(middle_temperatures)
