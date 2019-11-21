abs(-5)
abs(-10)
sum(c(1,2,3,4))
sum(list(c(1,2,3,4)))

errors <- c(1.9, -2.6, 4.0, -9.5, -3.4, 7.3)

sum(abs(round(errors)))

# Don't edit these two lines
vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)

# Fix the error
#mean(abs(vec1), abs(vec2))

# Fix the error
mean(c(abs(vec1), abs(vec2)))

?seq

seq(-10, 10, length.out = 5)

rep(c(1,2), times = 2)

sort(c("b", "d", "f", "c", "l", "a"))
sort(c(5,6,2,8,2,1,0))
rev(c(1,2,3,4))
rev(list(c(1,2,3,4))[[1]])

str(list(32,7,24))
sort(append(c(1,3,5), c(2,4,6)))

unlist(list(c(4,5,7), c(1,2,3)))

vector <- as.vector(list(c(1,2,3)))
vector[[1]]
?as.vector


emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for "edu"
grepl("@.*\.edu$", emails)

grepl("\\.com", c("hello@lala.com"))
grepl("lala\\.com", c("hello@lala.com"))
grepl("@lala\\.com", c("hello@lala.com"))
grepl("@lalo\\.com", c("hello@lala.com"))
grepl("@.\\.com", c("hello@lala.com"))
grepl("@.\\.com", c("hello@l.com"))
grepl("@.\\.com", c("hello@lala.com"))
grepl("@.\\.com", c("hello@lala.comdsadas"))
grepl("@.\\.com", c("hello@l.comdsadas"))
grepl("@.\\.com$", c("hello@l.comdsadas"))
grepl("@.\\.com$", c("hello@l.com"))
grepl("@.\\.com$", c("hello@la.com"))
grepl("@.*\\.com$", c("hello@la.com"))
grepl("@.*\\.com$", c("hello@lala.com"))
grepl("@.*\\.edu$", c("hello@lala.edu"))
valid_emails <- grepl("@.*\\.edu$", emails)
emails[valid_emails]

?grepl
?grep

valid_emails <- grep("@.*\\.edu$", emails)
valid_emails
emails[valid_emails]


## Sub & gsub
emails
sub("@.*\\.edu$", "@datacamp.edu", emails)
new_emails <- sub("@.*", "@", emails)
new_new_emails <- sub("@$", "@datacamp.edu", new_emails)
new_new_emails
new_new_emails <- new_new_emails[grep("@datacamp\\.edu", new_new_emails)]
new_new_emails
sub("@.*", "@datacamp.edu", emails)


awards <- c("Won 1 Oscar.",
            "Won 1 Oscar. Another 9 wins & 24 nominations.",
            "1 win and 2 nominations.",
            "2 wins & 3 nominations.",
            "Nominated for 2 Golden Globes. 1 more win & 2 nominations.",
            "4 wins & 1 nomination.")

response <- sub(".*\\s([0-9]+)\\snomination.*$", "\\1", awards)
response

?gsub

now <- Sys.time()
now
class(now)
unclass(now)

date <- as.Date("1982-01-13")
?as.Date

date <- as.Date("1980/01/01", format = "%Y/%m/%d")
date

format(date, "%B, %A %d %Y")

dates <- as.Date(c("1982-01-30", "1992-01-30", "2002-01-30", "2012-01-30", "2019-11-21"))
format(dates[5], "%B, %A %d, %Y")

hour <- as.POSIXct("2001/11/17 12:52 am", format = "%Y/%m/%d %H:%M %p")
hour

day1 <- as.Date("2018-08-18")
day2 <- as.Date("2018-08-20")
day3 <- as.Date("2018-08-25")
day4 <- as.Date("2018-08-31")
day5 <- as.Date("2018-09-05")

as.numeric(day5 - day1)

pizza <- c(day1, day2, day3, day4, day5)
pizza

differences <- diff(pizza)
differences
mean(differences)

birth <- as.POSIXct("1879-03-14 14:37:23")
death <- as.POSIXct("1955-04-18 03:47:12")
einstein <- death - birth
as.numeric(einstein) / 365

?strptime


login <- as.POSIXct("2018-08-22 10:18:04 UTC")
login

logout <- as.POSIXct("2018-08-22 10:56:29 UTC")
logout

time_online <- logout - login

# Inspect the variable time_online
sum(time_online)