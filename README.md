

# Overview

1. App brief for Beacon Pre-Queuing
2. Requirements
3. Wireframing & workflow diagram
4. User stories
5. Entity relationship diagram / DB Schema
6. Current bugs, future updates and others.
7. Coding and current bugs

------------------

## 1. App brief for Beacon Pre-Queuing

Beacon attempts to solve the problem of low local server population in online gaming by creating an environment in which users can alert others to their current game/region/server, creating a sort of pre-queuing service which would help in making underpopulated regions more visible, thereby increasing player traffic to those regions and allowing users to enjoy matches in a more local environment as well as allowing those players to connect with other like-minded people and potentially form lasting groups.

Link : https://beacon-pre-queuing.herokuapp.com/
-----------------------
## 2. Requirements

1. Create your application using Ruby on Rails
2. Demonstrate knowledge of Rails conventions.
3. Use postgresql database in development.
4. Use an API (eg. Omniauth, Geocoding, Maps, other..). (Stripe)
5. Use appropriate gems.
6. Use environmental variables to protect API keys etc. (set in heroku)
7. Implement a payment system for your product. (Stripe used)
8. Your app must send transactional emails (eg. using Mailgun).(to be implemented)
9. Your app should have an internal user messaging system. (Mailboxer)
10. Your app will have some type of searching, sorting and or filtering capability.
11. Your app will have some type of file uploading capability (eg. images). (Cloudinary)
12. Your app will have authentication (eg. Devise, must have full functionality in place).
13. Your app will have authorisation (users have restrictions on what they can see and edit). (partially implemented, patients can only edit listings, practitioners can only edit quotes)
16. Your app will have an admin dashboard for the admin user to administrate the site. (not needed at this stage)
17. Document your application with a README that explains how to setup, configure and use your application.


## The project will be built in Rails 5 and PostgreSQL for the database using a combination of gems that include:

Devise: User Sign-up & Login, CRUD resource access for general users.
Mailgun: Registration and subscription email, as well as user bug-reporting.
Dotenv: Environmental variable protection.
Stripe: Payment processing.
Carrierwave: User avatar image uploading.
Devise Bootstrap: Bootstrap Devise Styling.
Twitter Bootstrap: Site wide Bootstrap styling.
Bootswatch: Bootstrap templates.
