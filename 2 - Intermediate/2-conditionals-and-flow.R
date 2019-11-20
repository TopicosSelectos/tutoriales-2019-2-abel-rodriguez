## Simple operators
  3 == (2 + 1)   
  "intermediate" != "r"   
  TRUE != FALSE   
  "Rchitect" != "rchitect"   
  "abel" == "abel"
  "abel" == "Abel"
  (1 + 2) > 4
  "dog" < "Cats"
  TRUE <= FALSE
  TRUE > FALSE
  TRUE >= FALSE
  -6 * 5 +2 >= -10 +1

## Vectors
  linkedin <- c(16, 9, 13, 5, 2, 17, 14)
  facebook <- c(17, 7, 5, 16, 8, 13, 14)
  
  # Popular days
  linkedin > 15
  linkedin[linkedin > 15]


## Matrices
  linkedin <- c(16, 9, 13, 5, 2, 17, 14)
  facebook <- c(17, 7, 5, 16, 8, 13, 14)
  
  views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)
  views
  views == 13
  views <= 14
  
  
  TRUE & TRUE
  FALSE | TRUE
  5 <= 5 & 2 < 3
  3 < 4 | 7 < 6
  
  
  last <- tail(linkedin, 1)
  last
  
  last < 5 | last > 10
  
  linkedin > 5 & linkedin < 10
  
  views > 5 & views < 10
  
  # setwd("~/Personal/UACJ/Noveno semestre/Topicos/tutoriales-2019-2-abel-rodriguez/_data")
  
  projects_csv_df <- read.csv('_data/example.csv', stringsAsFactors = FALSE)
  projects_csv_df

  projects_csv_df$Cost
  projects_csv_df$Cost > 300 | projects_csv_df$Cost < 1
  projects_csv_df == "personal-website" | projects_csv_df == "input-app" | projects_csv_df > 10
  
  sum(projects_csv_df$Cost > 300 | projects_csv_df$Cost < 1)
  
  
## Conditional statements
  if (mean(linkedin) > 12) {
    print("You're popular!")
  } else {
    print("Try to be more visible!")
  }
  

  # Variables related to your last day of recordings
  li <- 15
  fb <- 9
  
  # Code the control-flow construct
  if (li >= 15 & fb >= 15) {
    social_media_score <- 2 * (li + fb)
  } else if (li < 10 & fb < 10) {
    social_media_score <- (li + fb) / 2
  } else {
    social_media_score <- li + fb
  }
  
  # Print the resulting sms to the console
  social_media_score