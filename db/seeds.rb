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

StudyRoom.create(category_id: 1, location_id: 1, name: 'Beginner Ruby', start_time: DateTime.strptime("09/01/2017 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("09/01/2017 19:00", "%m/%d/%Y %H:%M"))
StudyRoom.create(category_id: 1, location_id: 2, name: 'Advanced Ruby', start_time: DateTime.strptime("09/01/2019 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("11/01/2019 19:00", "%m/%d/%Y %H:%M"))
StudyRoom.create(category_id: 2, location_id: 1, name: 'Studying CSS', start_time: DateTime.strptime("09/01/2019 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("11/01/2019 19:00", "%m/%d/%Y %H:%M"))
StudyRoom.create(category_id: 3, location_id: 3, name: 'Studying Chem', start_time: DateTime.strptime("09/01/2019 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("11/01/2019 19:00", "%m/%d/%Y %H:%M"))
StudyRoom.create(category_id: 4, location_id: 2, name: 'Learning Game Theory', start_time: DateTime.strptime("09/01/2019 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("11/01/2019 19:00", "%m/%d/%Y %H:%M"))

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

Comment.create(user_id: 1, study_room_id: 1, comment: "Hey, I'm bringing snacks if anyone wants.")
Comment.create(user_id: 2, study_room_id: 1, comment: "Sure but only if they are Bugles and Capri Sun.")
Comment.create(user_id: 1, study_room_id: 1, comment: "No.")
Comment.create(user_id: 1, study_room_id: 2, comment: "Snacks are the best snacks.")