# Poker and roulette winnings from Monday to Friday:
money_per_day <- c(500, -50, 0, -15, -100, -300, 25)

days_of_week <- c("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo")

names(money_per_day) <- days_of_week

total_money <- sum(money_per_day)
total_money
