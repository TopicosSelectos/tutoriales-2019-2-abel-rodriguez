help(apply)

pow <- function(number, power = 2) {
  return (number ^ power)
}

my_numbers <- c(1,2,3,4,5)

my_numbers <- apply(my_numbers, 1:5, pow)

my_numbers

?strsplit

pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split_math <- strsplit(pioneers, split = ":")
split_math

split_lowercase <- lapply(split_math, tolower)
split_lowercase

str(split_lowercase)

squares_list <- lapply(c(1,2,3,4,5), function(value, power = 1) { value ^ power }, power = 2)
squares_list

#########################

t1 <- c( 3,  7,  9,  6, -1)
t2 <- c( 6,  9, 12, 13,  5)
t3 <- c(4,  8,  3, -1, -3)
t4 <- c(1,  4,  7,  2, -2)
t5 <- c(5, 7, 9, 4, 2)
t6 <- c(-3,  5,  8,  9,  4)
t7 <- c(3, 6, 9, 4, 1)


temp <- list(t1, t2, t3, t4, t5, t6, t7)
temp

min_temperatures <- lapply(temp, min)
max_temperatures <- lapply(temp, max)

min_temperatures
max_temperatures

min_temperatures <- sapply(temp, min)
max_temperatures <- sapply(temp, max)

min_temperatures
max_temperatures

new_temperatures <- sapply(temp, function(value, fn) { fn(value) / 10 }, min)
new_temperatures
new_temperatures <- sapply(temp, function(value, fn) { fn(value) / 10 }, max)
new_temperatures


min_and_max <- function(value) { c( min = min(value), max = max(value)) }
new_temperatures <- lapply(temp, min_and_max)
new_temperatures
new_temperatures <- sapply(temp, min_and_max)
new_temperatures

below_zero <- function(x) {
  return(x[x < 0])
}

freezing_s <- sapply(temp, below_zero)
freezing_s

freezing_l <- lapply(temp, below_zero)
freezing_l

identical(freezing_s, freezing_l)

print_info <- function(x) {
  cat("The average temperature is", mean(x), "\n")
}

# Apply print_info() over temp using sapply()
sapply(temp, print_info)


##### Vapply
  # Definition of basics()
  basics <- function(x) {
    c(min = min(x), mean = mean(x), max = max(x))
  }
  
  # Apply basics() over temp using vapply()
  vapply(temp, basics, numeric(3))
  
  ?vapply
