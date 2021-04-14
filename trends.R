# A Trending Topic 0.1
# author: Simone Banna

# Create Twitter token
blacktwitterbot_token <- rtweet::create_token(
  app = "intelftc1",
  consumer_key =    Sys.getenv("TWITTER_CONSUMER_API_KEY"),
  consumer_secret = Sys.getenv("TWITTER_CONSUMER_API_SECRET"),
  access_token =    Sys.getenv("TWITTER_ACCESS_TOKEN"),
  access_secret =   Sys.getenv("TWITTER_ACCESS_TOKEN_SECRET")
)

# Get Trends
newyork <- get_trends("new york")
atl <- get_trends("atlanta")
chicago <- get_trends("chicago")
miami <- get_trends("miami")

# Save As CSV
save_as_csv(newyork, "trends.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
