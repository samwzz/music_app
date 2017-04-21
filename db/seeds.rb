# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

b1 = Band.create!(name: "Shin's Crew")
b2 = Band.create!(name: "Brannan Squad")

a1 = Album.create!(name: "Korean Folk Songs", yr: 2000, band_id: b1.id)
a2 = Album.create!(name: "America!", yr: 2010, band_id: b2.id)

t1 = Track.create!(name: "Track 1", album_id: a1.id)
t2 = Track.create!(name: "Track 2", album_id: a1.id)
t3 = Track.create!(name: "Track 3", album_id: a1.id)

t4 = Track.create!(name: "New York", album_id: a2.id)
t5 = Track.create!(name: "Chicago", album_id: a2.id)
t6 = Track.create!(name: "SF", album_id: a2.id)
