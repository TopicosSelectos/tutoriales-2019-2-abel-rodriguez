# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)

row_names <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
column_names <- c("US", "non-US")
matrix_names_config <- 

star_wars_matrix <- matrix(box_office, byrow = TRUE, dimnames = matrix_names_config)

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector