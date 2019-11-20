# First exercise

empire_strikes <- c(1,2,3)
new_hope <- c(10, 20, 30)
return_jedi <- c(100,200,300)

star_wars_matrix <- matrix(c(empire_strikes, new_hope, return_jedi), ncol = 3)
star_wars_matrix

rownames(star_wars_matrix) <- c("Empire Strikes", "New Hope", "The Return of the Jedi")
colnames(star_wars_matrix) <- c("Day 1", "Day 2", "Day 3")

star_wars_matrix

# Second Exercise
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)

column_names <- c("US", "non-US")
row_names <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
names <- list(row_names, column_names)


my_matrix <- matrix(box_office, nrow = 3, byrow = TRUE, dimnames = names)
my_matrix

worldwide_vector <- rowSums(my_matrix)
worldwide_vector


my_matrix <- cbind(my_matrix, worldwide_vector)
my_matrix

column_names <- c(column_names, "Worldwide")
colnames(my_matrix) <- column_names

my_matrix

column_names <- c("US", "non-US", "Worldwide")
row_names <- c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")

names <- list(row_names, column_names)
box_office2 <- c(474.5, 552.5, 474.5 + 552.5, 310.7, 338.7, 310.7 + 338.7, 380.3, 468.5, 380.3 + 468.5)
star_wars_matrix2 <- matrix(box_office2, nrow = 3, byrow = TRUE, dimnames = names)

star_wars_matrix2

all_star_wars_matrix <- rbind(my_matrix, star_wars_matrix2)
all_star_wars_matrix

total_revenue_vector <- colSums(all_star_wars_matrix)
total_revenue_vector

all_star_wars_matrix[1,1]
all_star_wars_matrix[1:3,1:3]
all_star_wars_matrix[1:3,1:2]
all_star_wars_matrix[1:2,1:2]
all_star_wars_matrix[1:2,1:3]

all_non_us <- all_star_wars_matrix[,2]
mean(all_non_us)

all_non_us_first_two_movies <- all_star_wars_matrix[1:2, 2]
all_non_us_first_two_movies

mean(all_non_us_first_two_movies)

## 4.10
my_matrix
2 * my_matrix
my_matrix * my_matrix

matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, byrow = TRUE) %*%
  matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, byrow = TRUE)

all_box_office_matrix <- all_star_wars_matrix[,1:2]
all_movie_prices <- matrix(c(4.1, 2.1, 4.2, 2.2, 4.3, 2.3, 4.4, 2.4, 4.5, 2.5, 4.6, 2.6), ncol = 2, byrow = TRUE)
all_movie_prices

visitors_matrix <- all_box_office_matrix / all_movie_prices
visitors_matrix

us_visitors <- visitors_matrix[, 1]
us_visitors

mean(us_visitors)