user_1 <- c(5, 10)
user_2 <- c(7, 9.8)
user_3 <- c(8, 7.1)
user_4 <- c(9, 9.5)

users <- c(user_1, user_2, user_3, user_4)

col_names <- c("ID", "Grade")
row_names <- c("Abel", "Carlos", "Paola", "Michelle");

user_matrix <- matrix(users, byrow=TRUE, ncol=2)
user_matrix

colnames(user_matrix) <- col_names
rownames(user_matrix) <- row_names

user_matrix