# A Trending Topic 0.1
# author: Simone Banna

library (rtweet)
library(httpuv)

get_token()

newyork <- get_trends("new york")
atl <- get_trends("atlanta")
chicago <- get_trends("chicago")
miami <- get_trends("miami")

save_as_csv(newyork, "nyctrends.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")