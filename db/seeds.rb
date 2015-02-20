# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# User.delete_all
# Track.delete_all
# Comment.delete_all

u1 = User.create!(name: 'Dave', about: 'Im from Leeds', contact: 'dave@dave.com', genre: 'House', email: 'dave@dave.com', password: 'password', password_confirmation: 'password')
u2 = User.create!(name: 'Chris', about: "Im from Glasgow", contact: 'chris@chris.com', genre: "Techno", email: 'chris@chris.com', password: 'password', password_confirmation: 'password')
u3 = User.create!(name: 'Sarah', about: 'Im from London', contact: 'sarah@sarah.com', genre: 'Gabba', email: 'sarah@sarah.com', password: 'password', password_confirmation: 'password')

# t1 =  Track.create!(title: 'My amazing track', length: 3, user_id: u1.id)
# t2 =  Track.create!(title: 'My track', length: 3, user_id: u1.id)
# t3 =  Track.create!(title: 'My song', length: 3, user_id: u2.id)
# t4 =  Track.create!(title: 'My house track', length: 3, user_id: u2.id)
# t5 =  Track.create!(title: 'My terrible vocal house track', length: 3, user_id: u3.id)
# t6 =  Track.create!(title: 'Twitchy Gabba', length: 3, user_id: u3.id)


# c1 = Comment.create!(feedback: 'terrible', user_id: u1.id, track_id: t1.id)
# c2 = Comment.create!(feedback: 'amazing', user_id: u1.id, track_id: t2.id)
# c3 = Comment.create!(feedback: 'insane', user_id: u2.id, track_id: t3.id)
# c4 = Comment.create!(feedback: 'wrong', user_id: u2.id, track_id: t4.id)
# c5 = Comment.create!(feedback: 'so wrong its right', user_id: u3.id, track_id: t5.id)
# c6 = Comment.create!(feedback: 'awesome', user_id: u3.id, track_id: t6.id)




