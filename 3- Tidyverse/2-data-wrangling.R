# 2.0.1

  library('gapminder')
  library('dplyr')

  head(gapminder$year)
  
  View(gapminder)
  
# 2.0.2
  
  View(gapminder %>% filter(year == 1957))
  
# 2.0.3

  View(gapminder %>% filter(country == "China", year == 2002))
  
# 2.0.4
  View(gapminder %>% arrange(desc(lifeExp)))
  
# 2.0.5
  per_year <- gapminder %>% filter(year == 1957)
  sorted_by_population <- per_year %>% arrange(pop)
  View(sorted_by_population)
  
  # One liner
  View(gapminder %>% filter(year == 1957) %>% arrange(desc(pop)))
  
# 2.0.6
  View(gapminder %>% mutate(lifeExp = lifeExp * 10))
  View(gapminder %>% mutate(lifeExpMonths = lifeExp * 12))
  
# 2.0.7
  View(gapminder %>% filter(year == 2007) %>% mutate(lifeExpMonths = 12 * lifeExp) %>% arrange(desc(lifeExpMonths)))
  