# Exercise 1

mtcars 
class(mtcars)
head(mtcars)
tail(mtcars)

str(mtcars)

# Exercise 2

planet_names_vector <- factor(c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"), ordered = TRUE, levels = c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"))
planet_types_vector <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
                         "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
planet_diameters_vector <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
planet_rotations_vector <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
planet_with_rings_vector <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

planets_df = data.frame(planet_names_vector, planet_types_vector, planet_diameters_vector, planet_rotations_vector, planet_with_rings_vector)
planets_df

class(planets_df)
str(planets_df)
head(planets_df)
tail(planets_df)

planets_df[1,1]
planets_df[1,]
planets_df[3:1,]
planets_df[3,1:3]

planets_df
planets_df[2, "planet_types_vector"]
planets_df$planet_types_vector
planets_df$planet_with_rings_vector

planets_df[planet_with_rings_vector, ]
planets_df[planet_rotations_vector > 1, ]
planets_df[planet_types_vector == "Terrestrial planet", ]
planets_df[planet_types_vector != "Terrestrial planet", ]

subset(planets_df, subset = planet_rotations_vector > 1)
subset(planets_df, subset = planet_diameters_vector < 1)

## Sorting
a_vector <- c(100, 10, 1, 231, 321, 1000, 12312, 100, 0, -2, -54, 12, -5, -2)
a_vector
order(a_vector)
a_vector

a_vector[c(4,5,6)]
a_vector[order(a_vector)]
a_vector[order(a_vector, decreasing = TRUE)]

?order()

planets_df[c(1,8,2,3,4,5,6,7,8),]
planets_df[order(planets_df$planet_diameters_vector),]