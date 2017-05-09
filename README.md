
# User Stories

# As a user, I should be able to create a new account and log in *DONE 5/8/2017*
# As a user, I should be able to view my profile, which includes all the study rooms I own and all of the posts I have attended/will attend *Profile-Marianna 5/8/2017*
# As a user, I should be able to also see categories and locations related to my study rooms *Profile-Marianna 5/8/2017*
# As a user, I should be able to create a new study room and give it a category and location.  I should be able to choose a category or create a new one.  For location, I should be able to add or find a location based on address (and eventually, my current location) *KYLE 5/8/2017*
# As a user, I should be able to view all current study rooms, study locations, and categories *DONE index of all study rooms 5/8/2017*
# Authentication check on all controllers & current user *DONE Gaby & Maxwell 5/8/2017*
# As a user, I have to have a unique username *DONE WITH VALIDATIONS Gaby & Maxwell 5/8/2017*


## To skateboard
Study Room Index:
# Should be able to link to any studyroom, related location or owner.
# Should be able to create new study room
# Should not display create button if user is not signed in
# Study rooms should be separated maybe? Card/box type organization
Study Room SHOW:
# Should be able to show all attendees, the location.  
# Should be able to edit/delete if owner boolean is triggered.
# Should be able to join with button as student
# Should not display join button or attendees if user is not signed in
Study Room Create:
# Should handle category creation and location creation if not found
Location Index
# Should be able to click on all study locations
Location Show:
# Should be able to see list of students who have been here
# Should show upcoming study rooms
# Should show categories studied at location
User Index:
# Should show user link list, with *stretch* top location and topic of study
User Show:
# Should show individual locations, categories for user.
Categories Show:
# Should show students who are studying this category.
Application Layout:
# Should show link to user profile, website links in top navigation?
# Should have footer for all pages
Improved Model SQL methods:
# Study_rooms.upcoming
# User.first.locations -- should give all locations of user from all study rooms
# User.first.categories -- should give all categories from all study rooms
# Location.categories
# Location.top_user
# Location.top_category
# Location.upcoming_study_rooms - filter by current date
# Category.top_user
# Category.top_location
# Category.locations
# Category.upcoming_study_rooms - filter by current date
Specs
# User login/authentication
# Study Room creation and editing
# Study Room joining then viewing
# User view includes updated study rooms, locations, categories
Analytics page
# ????? - Top locations, top users, top categories, top users by location/category, # stretch goal - highest rated, quiet places, free study places.
CSS/Design
# Make site look pretty

## STRETCH GOALS

## Users can have friends
## Search functionality - search on location, category
## Location maps (http://www.rubygeocoder.com/)
## Users can message friends
## Users can create study room from current location automatically.
## Stubbing url with study room name
## Suggest friends who are in similar locations/categories
## Location ratings and *metrics* - sound volume, cost, free wifi?,
## Enable study room cohosting
## Alert me about things my friends are doing #FOMO
## Users can post comments in the study room


# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
