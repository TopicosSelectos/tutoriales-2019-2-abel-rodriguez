help(sample)
args(sample)

help(mean)

args(mean)

mean(c(9.4, 8.0, 3.8, NULL))

linkedin <- c(16, 9, 13, NA, 5, 2, NA, 17, 14)
facebook <- c(17, NA, 7, 5, 16, 8, 13, 14, NA)

average_linkedin <- mean(linkedin)
average_facebook <- mean(facebook)

average_linkedin
average_facebook

average_linkedin_trimmed <- mean(linkedin, 0.2)
average_facebook_trimmed <- mean(facebook, 0.2)

average_linkedin_trimmed
average_facebook_trimmed


average_social <- mean(facebook + linkedin, na.rm = TRUE)
average_social_trimmed <- mean(facebook + linkedin, 0.2, na.rm = TRUE)

average_social
average_social_trimmed

abs(linkedin - facebook)
mean(abs(linkedin - facebook), na.rm = TRUE)


pow <- function(x, power) {
  x ^ power
}

pow(pow(4, 2), 2)
pow(pow(2, 2), 2)

random <- function(n = 100) {
  sample(1:n, size = 1)
}

random(5)
random()
random()
random()
random()
random()
random()
random()
random()
random()

?sd

pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2

  if (print_info) {
    print(paste(x, "to the power two equals", y))
  }
  
  y
}

linkedin <- c(16, 9, 13,  5, 2, 17, 14)
facebook <- c(17, 7, 5, 16,  8, 13, 14)

interpret <- function(num_views, fn = NULL) {
  if (num_views > 15) {
    print("You're popular!")
    if (!is.null(fn)) {
      fn(num_views - 1, fn)
    }
    return(num_views)
  } else {
    print("Try to be more visible")
    return(0)
  }
}

interpret(num_views = 20, fn = interpret)

library("ggplot2")

qplot(mtcars$wt, mtcars$hp)

search()