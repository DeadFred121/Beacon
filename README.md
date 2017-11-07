

# Overview

1. App Brief for Beacon Pre-Queuing
2. Requirements
3. Wireframing & Workflow Diagram
4. User Stories
5. Entity Relationship Diagram
6. List of Tools Used
7. Current Bugs and Future Updates

------------------

## 1. App Brief for Beacon Pre-Queuing

Beacon attempts to solve the problem of low local server population in online gaming by creating an environment in which users can alert others to their current game/region/server, creating a sort of pre-queuing service which would help in making underpopulated regions more visible, thereby increasing player traffic to those regions and allowing users to enjoy matches in a more local environment as well as allowing those players to connect with other like-minded people and potentially form lasting groups.

Link : https://beacon-pre-queuing.herokuapp.com/

-----------------------

## 2. Requirements

1. Create your application using Ruby on Rails
2. Demonstrate knowledge of Rails conventions.
3. Use postgresql database in development.
4. Use an API (eg. Omniauth, Geocoding, Maps, other..). `(Stripe)`
5. Use appropriate gems.
6. Use environmental variables to protect API keys etc. `(Dotenv, also set in heroku)`
7. Implement a payment system for your product. `(Stripe used)`
8. Your app must send transactional emails (eg. using Mailgun).
9. Your app should have an internal user messaging system. `(Internal model system created)`
10. Your app will have some type of searching, sorting and or filtering capability.
11. Your app will have some type of file uploading capability (eg. images). `(Carrierwave)`
12. Your app will have authentication (eg. Devise, must have full functionality in place).
13. Your app will have authorisation (users have restrictions on what they can see and edit). `(No sign up is needed to search through and show flares by users. Sign up is needed to post flares. User is only able to CRUD flares and profile information they have created.)`
16. Your app will have an admin dashboard for the admin user to administrate the site. `(ActiveAdmin)`
17. Document your application with a README that explains how to setup, configure and use your application.

--------------

## 3. Wireframing and Workflow Diagram

-------------

## 4. User Stories

- Users

1. As a user, I want to be able to search for players waiting on servers in my selected region so I can get into a local match faster.
2. As a user, I want to be able to communicate with beacons I've responded to so I can notify them that I will be joining their game.
3. As a user, I want a way to store my details so I quickly pre-populate my beacons with my platform and region of choice.
4. As a user, I want my online handle and information to be safe and not accessible to people I do not want to share them with.
5. As a user, I want a way to rate others based on their conduct so I can recommend them to other players.
6. As a user, I want my experience to be quick, clean and responsive so I can accomplish my goals with minimal fuss.
7. As a user, I want the ability to save information for different games/platforms so that I can easily switch from one search to another.
8. As a user, I want the platform to be community driven, so it's more about finding people, rather than matches/raids.
9. As a user, I want to be able to customise my profile so that I can personalise my appearance on the app.

- Developer

1. As a developer, I want my users to be able to search by region/platform/game to better find players to match with in their server region.
2. As a developer, I want to be able to offer a payment to upgrade a users account so they have access to more features.
3. As a developer, I want to be able to quickly access analytics on my site to better understand who my users are.
4. As a developer, I want anyone to be able to view active beacons and join those users games so that the core experience is open to everyone.
5. As a developer, I want my users to be able to edit and delete their beacons as they see fit, so they have control over their posts.
6. As a developer, I want my users beacons to expire after a certain amount of time, as to not show other users expired data.

----------------

## 5. Entity Relationship Diagram

![alt text](https://user-images.githubusercontent.com/30706873/32473675-8d3fc246-c3b4-11e7-8e59-738dd224f5cd.png)

------------------

## 6. List of Tools Used

1. Trello - [Link to Trello Board](https://trello.com/b/QMM8ditp/beacon)
2. DB designer - [Link to DB Designer]
3. Axure
4. Bootstrap/Bootswatch
5. Rubocop used for code review
6. Gems: `stripe, carrierwave-aws, dotenv-rails, carrierwave, devise-bootstrap-views, jquery-rails, bootswatch-rails, bootstrap-sass, devise`

---------------

## 7. Current Bugs and Future Updates

- Current Bugs

- Future Updates

1. Adding rating function to site users via `Ratyrate` gem.
2. Integrating Quality-Of-Life features:
   - Tooltips and user ability suggestions.
   - Additional Profile customisation options.
   - Ability to favourite particular Users.
3. Adding Pro functionality to Pro accounts:
   - Priority Flare setting.
   - Setting active time for flares.
   - Custom user display text and colors.
   - Saving multiple platform lists, each with specific games attached.
   
-------------------

