require 'rails_helper'

RSpec.describe User, :feature do

    before do
        User.destroy_all
        StudyRoom.destroy_all
        @user = User.create!(username: "MariKats", password: "123", password_confirmation: "123")
        @category = Category.create(name: 'Ruby')
        @location = Location.create(name: 'Central Park', address: '52 Central Park West', wifi: true, volume: 1, capacity: 10, longitude: 45.0, latitude: 50.1)
        @study_room = StudyRoom.create(category_id: @category.id, location_id: @location.id, name: 'Beginner Ruby - Specs', start_time: DateTime.strptime("09/01/2017 17:00", "%m/%d/%Y %H:%M"), end_time: DateTime.strptime("09/01/2017 19:00", "%m/%d/%Y %H:%M"))
    end
 
    it "gets the study room name" do
        expect(@study_room.name).to eq("Beginner Ruby - Specs")
    end

    it "gets the study room's first user name" do
        expect(@study_room.users.first.username).to eq("MariKats")
    end

    it "gets the study room's first user name" do
        expect(@study_room.location).to eq("Central Park")
    end

    describe "/users/:id" do

        it "links to the category" do
        visit user_path(@user)
        expect(page).to have_link("Ruby", href: category_path(@category))
        end

        it "links to the location" do
        visit user_path(@user)
        expect(page).to have_link("Central Park", href: location_path(@location))
        end
    end
end