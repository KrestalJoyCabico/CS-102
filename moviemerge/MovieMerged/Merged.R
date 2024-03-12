Movie1 <- read_csv("moviemerge/The Beekeeper.csv")
Movie2 <- read_csv("moviemerge/True Detective.csv")
Movie3 <- read_csv("moviemerge/The Godfather.csv")
Movie4 <- read_csv("moviemerge/The Dark Knight.csv")
Movie5 <- read_csv("moviemerge/The Godfather Part II.csv")
Movie6 <- read_csv("moviemerge/12 Angry Men.csv")
Movie7 <- read_csv("moviemerge/Schindler's List.csv")
Movie8 <- read_csv("moviemerge/The Lord of the Rings: The Return of the King.csv")
Movie9 <- read_csv("moviemerge/Pulp Fiction.csv")
Movie10 <- read_csv("moviemerge/The Lord of the Rings: The Fellowship of the Ring.csv")

MergedMovies <- rbind(Movie1, Movie2, Movie3, Movie4, Movie5, Movie6, Movie7, Movie8, Movie9, Movie10)


write.csv(MergedMovies, "Mergedmovies.csv", row.names = FALSE)