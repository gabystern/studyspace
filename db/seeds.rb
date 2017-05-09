# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Location.create(name: 'Flatiron', address: '11 Broadway')
Location.create(name: 'Starbucks', address: '25 Broadway')
Location.create(name: 'Central Park', address: '52 Central Park West')
Location.create(name: "Joe's Place", address: '34 Broadway')

Category.create(name: 'Math')
Category.create(name: 'History')
Category.create(name: 'Ruby')
Category.create(name: "Knitting")

StudyRoom.create(category_id: 1, location_id: 1)
StudyRoom.create(category_id: 1, location_id: 2)
StudyRoom.create(category_id: 2, location_id: 1)
StudyRoom.create(category_id: 3, location_id: 3)
StudyRoom.create(category_id: 4, location_id: 2)


User.create(username: "MariKats", password: "123", password_confirmation: "123")
User.create(username: "Boo", password: "123", password_confirmation: "123")
User.create(username: "Lola", password: "123", password_confirmation: "123")
User.create(username: "Jimmy", password: "123", password_confirmation: "123")
User.create(username: "EasyE", password: "123", password_confirmation: "123")

UserStudyRoom.create(user_id: 1, study_room_id: 1)
UserStudyRoom.create(user_id: 1, study_room_id: 2)
UserStudyRoom.create(user_id: 2, study_room_id: 3)
UserStudyRoom.create(user_id: 4, study_room_id: 2)
UserStudyRoom.create(user_id: 4, study_room_id: 3)
UserStudyRoom.create(user_id: 3, study_room_id: 4)
UserStudyRoom.create(user_id: 5, study_room_id: 2)
UserStudyRoom.create(user_id: 1, study_room_id: 1)
UserStudyRoom.create(user_id: 1, study_room_id: 3, owner: true)
UserStudyRoom.create(user_id: 1, study_room_id: 4, owner: true)
UserStudyRoom.create(user_id: 1, study_room_id: 3, owner: true)
UserStudyRoom.create(user_id: 1, study_room_id: 5, owner: true)
