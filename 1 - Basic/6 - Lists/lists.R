# Exercise 1

my_vector <- 19:21
my_vector

my_matrix <- matrix(1:27, ncol = 3)
my_matrix

my_factor <- factor(c("Male", "Female"))

my_list <- list(243:245, my_vector, my_matrix)
my_list

# Exercise 2
shining_actors_vector <- c("Jack Nicholson", "Shelley Duvall",   "Danny Lloyd", "Scatman Crothers",  "Barry Nelson")

shining_reviews_scores <- c(4.7, 4.3, 5.0)
shining_reviews_sources <- c("IMDb1", "IMDb2", "IMDb3")
shining_reviews_comments <- c("Best horror film I have ever seen", "A truly brilliant and scary film from Stanley Kubrick", "A masterpiece of psychological horror")

shining_reviews_df <- data.frame(
  shining_reviews_scores,
  shining_reviews_sources,
  shining_reviews_comments
)

shining_list <- list(movie_name = "The Shining", actors = shining_actors_vector, reviews = shining_reviews_df)
shining_list

shining_list <- c(shining_list, year = 1980)

joker_actors_vector <- c("Joaquin Phoenix", "Robert De Niro", "Zazie Beetz")

joker_reviews_scores <- c(4.5, 3.5, 3.0)
joker_reviews_sources <- c("IMDb", "IMDb", "IMDb")
joker_reviews_comments <- c("The movie affects you in a good way.", "I would not call it a masterpiece as some did.", "I felt hollow and disappointed.")

joker_reviews_df <- data.frame(
  joker_reviews_scores,
  joker_reviews_sources,
  joker_reviews_comments
)

joker_list <- list(movie_name = "Joker", actors = joker_actors_vector, reviews = joker_reviews_df)
joker_list

joker_list <- c(joker_list, year = 2019)

movies_list <- list(shining = shining_list, joker = joker_list)
movies_list


movies_list$shining$reviews
movies_list$joker$reviews

str(movies_list)