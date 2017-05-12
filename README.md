
# User Stories

# As a user, I should be able to create a new account and log in *DONE 5/8/2017*
# As a user, I should be able to view my profile, which includes all the study rooms I own and all of the posts I have attended/will attend *Profile-Marianna 5/8/2017*
# As a user, I should be able to also see categories and locations related to my study rooms *Profile-Marianna 5/8/2017*
# As a user, I should be able to create a new study room and give it a category and location.  I should be able to choose a category or create a new one.  For location, I should be able to add or find a location based on address (and eventually, my current location) *KYLE 5/8/2017*
# As a user, I should be able to view all current study rooms, study locations, and categories *DONE index of all study rooms 5/8/2017*
# Authentication check on all controllers & current user *DONE Gaby & Maxwell 5/8/2017*
# As a user, I have to have a unique username *DONE WITH VALIDATIONS Gaby & Maxwell 5/8/2017*


## To skateboard
Study Room Index: - AFTER LECTURE
# Should be able to link to any study room, related location and owner.
-# Should be able to create new study room - nav bar
-# Should not display create button if user is not signed in
-# Study rooms should be separated maybe? Card/box (div) type organization with clickable join
Study Room SHOW: - KYLE/GABY
# Should be able to show all attendees, the location.  
-# Should be able to edit/delete if owner boolean is triggered.
-# Should be able to join with button as student  
-# Should not display join button or attendees if user is not signed in
Study Room Create: - KYLE - DONE
# Should handle category creation and location creation if not found
Location Index: - GABY - DONE
# Should be able to click on all study locations
Location Show: - GABY - DONE
# Should be able to see list of students who have been here
# Should show upcoming study rooms
# Should show categories studied at location

User Index: - DONE
# Should show user link list
User Show: - DONE
# Should show individual locations, categories for user. - DONE Marianna and Maxwell
Categories Show: - MARIANNA
# Should show students who are studying this category.
Search / Reputations

Last steps to skateboard:
# Adding navigation with Home/Study Rooms/Create   Categories/Locations/User   Log In - Log Out DONE

Improved Model SQL methods: - DONE
# Study_rooms.upcoming - OK
# User.first.locations -- should give all locations of user from all study rooms - OK
# User.first.categories -- should give all categories from all study rooms - OK
# Location.categories - OK
# Location.top_user - OK
# Location.top_category - OK
# Location.upcoming_study_rooms - filter by current date - OK
# Category.top_user -OK
# Category.top_location -OK
# Category.locations - OK
# Category.upcoming_study_rooms - filter by current date - OK
# StudyRoom.past - OK

More Validation
# Rating within 1-5
# 
Application Layout: - MARIANNA
# Should show link to user profile, website links in top navigation?
# Should have footer for all pages
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
++## Slugging url with study room name
## Suggest friends who are in similar locations/categories
++## Location ratings and *metrics* - sound volume, cost, free wifi?,
## Enable study room cohosting
## Alert me about things my friends are doing #FOMO
## Users can post comments in the study room - DONE

WEDNESDAY --

# Materialize stuff:
# Location Show - MARIANNA DONE
# Category Show - MARIANNA DONE
# User Show - MAX DONE
# User Index - MAX DONE
# Study Room Index - KYLE 
# Study Room New - KYLE
# Consistency after all pages are done - GABY

# Add Button to Create New Study Room on show page/user page - MAX DONE
# Owners can edit their pages - MAX DONE
# Nav bar - GABY DONE
# 


# Study Room Index - MARIANNA DONE
# Bits and pieces - MARIANNA DONE
# Show for Study Room, User, Location Index/Show - MARIANNA/MAXWEL
# Consistent styling for all pages - MARIANNA/MAXWELL
# Navigation - GABY

# Final display set up - GABY

# Refactoring - MAX sort of
# Finish Analytics page - DONE
# Push to Heroku DONE
# Create Room form checkbox DONE

Remaining issues:
# Odds and ends?
# User page functionality on Heroku

# Code Review
# Write out Specs
# Party





# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version: 2.4.1

* System dependencies: Beyond standard gems - BCrypt for passwords, Materialize for layout, Rspec - testing, Geocoder - address long/lat conversion, jQuery, rails_12factor - for heroku fixes

* Configuration - Postgresql db
    Modified production environment file:
        config.serve_static_assets = true
        config.assets.compile = true

* Database creation -  rails db:create, db:migrate

* Database initialization - base seeds included for rails db:seed

* How to run the test suite - rspec in CLI will run tests

* Services (job queues, cache servers, search engines, etc.) - N/A

* Deployment instructions - May require some adjustments for Heroku.  

* ...
