## Exercise 1
sex_vector <- c("Male", "Female", "Male", "Female", "Male", "Female")
sex_vector
sex_factor <- factor(sex_vector)
sex_factor

## Exercise 2
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
animals_vector

factor_animals_vector <- factor(animals_vector)
factor_animals_vector

temperature_vector <- c("High", "Low", "High", "Low", "Medium")
temperature_vector

factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

## Exercise 3

factor_vector <- factor(c("1", "2", "1", "3", "4"))
factor_vector
levels(factor_vector) <- c("Number 1", "Number 2", "Number 3", "Number 4")
factor_vector

survey_vector <- c("M", "F", "M", "F", "F", "F", "M")
survey_vector

factor_survey_vector <- factor(survey_vector)
factor_survey_vector

levels(factor_survey_vector) <- c("Mujer", "Hombre")
factor_survey_vector

summary(factor_survey_vector)
summary(survey_vector)

# Exercise 4
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")

male <- factor_survey_vector[1]
female <- factor_survey_vector[2]

male_gt_female <- male > female
male_gt_female

# Exercise 5
speed_vector <- c("medium", "medium", "slow", "slug", "medium", "medium", "fast", "slow")
speed_vector

factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slug", "slow", "medium", "fast", "flash"))
factor_speed_vector

factor_speed_vector[1] > factor_speed_vector[3]

summary(factor_speed_vector)

# Exercise 6
# Create factor_speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))

# Factor value for second data analyst
da2 <- factor_speed_vector[2]
da2

da5 <- factor_speed_vector[5]
da5

da2 > da5