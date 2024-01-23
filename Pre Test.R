library(polite)
library(dplyr)
library(rvest)
library(httr)

polite::use_manners(save_as = 'polite_scrape.R')

brand_description <- character(0)
url_link <- 'https://www.amazon.com/s?i=specialty-aps&bbn=16225007011&rh=n%3A16225007011%2Cn%3A172584&ref=nav_em__nav_desktop_sa_intl_scanners_0_2_6_12'
price <- character(0)
num_of_reviews <- character(0)

scraped_page <- scrape(bow(url_link, user_agent = "Educational"))

brand_description <- scraped_page %>%
  html_nodes('.a-size-medium.a-color-base.a-text-normal') %>%
  html_text()

brand_description <- data.frame(Brand_Description = brand_des)
brand_description <- slice(brand_desc, 1:3)
print(brand_description)

price <- scraped_page %>%
  html_nodes('span.a-offscreen') %>%
  html_text()

num_of_reviews<- scraped_page %>%
  html_nodes('span.a-size-base') %>%
  html_text()

review_stars <- scraped_page %>%
  html_nodes('span.a-icon-alt') %>%
  html_text()

min_length <- min(length(brand_des), length(price), length(num_of_rev), length(review_stars))

printer_data <- data.frame(
  Brand_Description = brand_descriptions[1:min_length],
  Price = price[1:min_length],
  Number_of_Reviews = num_of_reviews[1:min_length],
  Review_Stars = review_stars[1:min_length]
)

print(printer_data)