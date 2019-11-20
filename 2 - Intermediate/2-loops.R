# Initialize the speed variable
speed <- 88

while (speed > 30) {
  print(paste("Your speed is", speed))
  
  # Break the while loop when speed exceeds 80
  if (speed > 80) {
    break
  }
  
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

## Loop over a vector
primes <- c(2, 3, 5, 7, 11, 13)

for (i in 1:10) {
  print(i)
}

for (p in primes) {
  print(p)
}

for (i in 1:length(primes)) {
  print(i)
}

primes_list <- list(2,3,5,7,11,13)
print(primes_list[[1]])

for (p in 1:length(primes_list)) {
  print(primes_list[[p]])
}

nyc <- list(pop = 8405837, 
        boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
        capital = FALSE)

print(nyc)

for (info in nyc) {
  print(info)
}

# The tic-tac-toe matrix ttt has already been defined for you
d1 <- c("O",  "NA",   "X")
d2 <- c("NA", "O",  "O" )
d3 <- c("X",  "NA",  "X")

ttt_data <- c(d1, d2, d3)
ttt <- matrix(ttt_data, byrow = TRUE, nrow = 3)
ttt

for (row in 1:length(ttt[,1])) {
  print(paste("Row: ", row))
  for (col in 1:length(ttt[1,])) {
    print(paste("    Col: ", col))
    print(paste("    ", ttt[row,col]))
  }
}

for (row in 1:nrow(ttt)) {
  print(paste("Row: ", row))
  for (col in 1:ncol(ttt)) {
    print(paste("\tCol: ", col))
    print(paste("\t", ttt[row,col]))
  }
}

linkedin <- c(16, 9, 13, 5, 2, 17, 14)

for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  
  if (li > 16) {
    print("This is ridiculous, I'm outta here!")
    break
  }
  
  # Add if statement with next
  if (li < 5) {
    print("This is too embarrassing!")
    next
  }
  
  print(li)
}



# Exercise `build a loop from scratch`
rquote <- "r's internals are irrefutably intriguing"
rquote

chars <- strsplit(rquote, split = "")[[1]]

rCounter <- 0
for (i in 1:length(chars)) {
  if (chars[i] == 'r') {
    rCounter <- rCounter + 1
  }
  
  if (chars[i] == 'u') {
    break
  }
}

print(rCounter)
