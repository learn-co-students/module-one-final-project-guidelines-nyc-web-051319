User.create(name: Faker::Name.unique.name)
User.create(name: Faker::Name.unique.name)
User.create(name: Faker::Name.unique.name)
User.create(name: Faker::Name.unique.name)

Login.create(email: "sherich@gmail.com", password: "banana123", user_id: 1)
Login.create(email: "ruthless@yahoo.com", password: "cats123", user_id: 2)
Login.create(email: "iamadoctor@gmail.com", password: "456dogs", user_id: 3)
Login.create(email: "masonjar@hotmail.com", password: "hamster9999", user_id: 4)

aa = Genre.create(genre: "Action & Adventure")#aladdin, coco, moana, ffour
kids = Genre.create(genre: "Kids & Family")#aladdin, coco, moana
scifi = Genre.create(genre: "Science Fiction & Fantasy")#aladdin, ffour
com = Genre.create(genre: "Comedy")#long shot, lady bird, coco
drama = Genre.create(genre: "Drama")#lady bird
anim = Genre.create(genre: "Animation")#coco, moana
hor = Genre.create(genre: "Horror") #get out
mystery = Genre.create(genre: "Mystery & Suspense") #get out
rom = Genre.create(genre: "Romance") #fifty shades

al = Movie.create(name: "Aladdin", release_date: "2019-05-24", runtime: 128)
al.genres << aa
al.genres << kids
al.genres << scifi

ls = Movie.create(name: "Long Shot", release_date: "2019-05-03", runtime: 115)
ls.genres << com

lb = Movie.create(name: "Lady Bird", release_date: "2017-11-03", runtime: 93)
lb.genres << com
lb.genres << drama

cc = Movie.create(name: "COCO", release_date: "2017-11-22", runtime: 109)
cc.genres << kids
cc.genres << com
cc.genres << anim

go = Movie.create(name: "Get Out", release_date: "2017-02-24", runtime: 104)
go.genres << hor
go.genres << mystery

m = Movie.create(name: "Moana", release_date: "2016-11-23", runtime: 103)
m.genres << aa
m.genres << anim

fs = Movie.create(name: "Fifty Shades of Grey", release_date: "2015-05-08", runtime: 110)
fs.genres << rom

ff = Movie.create(name: "Fantastic Four", release_date: "2005-07-08", runtime: 123)
ff.genres << aa
ff.genres << scifi
