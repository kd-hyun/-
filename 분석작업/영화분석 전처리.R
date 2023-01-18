#내문서에 파일 넣어놓고 한 것

getwd()
install.packages('data.table')
library(data.table)

ratings <- fread('ratings.dat', sep = '/')
ratings
ratings_mean <- fread('ratings_mean.csv')
ratings_mean
users <- fread('users.dat' , sep = '/')
movies <- fread('movies.dat' , sep = '_')

head(movies)
head(users)
head(ratings)


sort(table(ratings$V1))


year <- substr(ratings$V4, 1,2)
month <- substr(ratings$V4,3,4)
range(ratings$V4)
movies
nchar
aa<- substr(movies$V2 , nchar(movies$V2)-4 , nchar(movies$V2)-1)
table(aa)

barplot(aa)
windows()
class(aa)
aa<-as.numeric(aa)
hist(aa)

movies$year <- aa
movies
y2000

users
barplot(table(users$V4))


ratings


write.csv(movies, 'movies_w.csv' , row.names = F)
write.csv(users, 'users_w.csv' , row.names = F)
write.csv(ratings, 'ratings_w.csv' , row.names = F)