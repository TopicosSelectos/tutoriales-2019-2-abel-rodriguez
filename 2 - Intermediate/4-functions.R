help(sample)
args(sample)

help(mean)

args(mean)

mean(c(9.4, 8.0, 3.8, NULL))

linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

average_linkedin <- mean(linkedin)
average_facebook <- mean(facebook)

average_linkedin
average_facebook

average_linkedin_trimmed <- mean(linkedin, 0.2)
average_facebook_trimmed <- mean(facebook, 0.2)

average_linkedin_trimmed
average_facebook_trimmed