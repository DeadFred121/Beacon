# Beacon Pre-Queuing Service

Beacon attempts to solve the problem of low local server activity in online multiplayer games by creating an alert service where players can post platform and game information for others to view and ultimately join them.


## The project will be built in Rails 5 and PostgreSQL for the database using a combination of gems that include:

Devise: User Sign-up & Login, CRUD resource access for general users.
Mailgun: Registration and subscription email, as well as user bug-reporting.
Dotenv: Environmental variable protection.
Stripe: Payment processing.
Carrierwave: User avatar image uploading.
Devise Bootstrap: Bootstrap Devise Styling.
Twitter Bootstrap: Site wide Bootstrap styling.
Bootswatch: Bootstrap templates.


# Overview

1. App brief for Beacon Pre-Queuing
2. Requirements
3. Wireframing & workflow diagram
4. User stories
5. Entity relationship diagram / DB Schema
6. Current bugs, future updates and others.
7. Coding and current bugs

Markup :  =============

1. App brief for ReSUS

Healthcare can be quite costly and not everyone has the ability to have private health insurance for non critical medical conditions. People could rely on Medicare and the public health system but this would mean prolonging their medical condition at the expense of waiting. Hence, ReSUS is a platform that provides a competitive marketplace for healthcare with the aim of lowering healthcare costs. Consequently, ReSUS also aims to lower the barriers of entry for healthcare - affordable healthcare for everyone.

Link : http://shrouded-spire-66335.herokuapp.com

2. Requirements

alt text1. Create your application using Ruby on Rails
alt text2. Demonstrate knowledge of Rails conventions.
alt text3. Use postgresql database in development.
alt text4. Use an API (eg. Omniauth, Geocoding, Maps, other..). (Stripe)
alt text5. Use appropriate gems.
alt text6. Use environmental variables to protect API keys etc. (set in heroku)
alt text7. Implement a payment system for your product. (Stripe used)
alt text8. Your app must send transactional emails (eg. using Mailgun).(to be implemented)
alt text9. Your app should have an internal user messaging system. (Mailboxer)
alt text10. Your app will have some type of searching, sorting and or filtering capability.
alt text11. Your app will have some type of file uploading capability (eg. images). (Cloudinary)
alt text12. Your app will have authentication (eg. Devise, must have full functionality in place).
alt text13. Your app will have authorisation (users have restrictions on what they can see and edit). (partially implemented, patients can only edit listings, practitioners can only edit quotes)
alt text16. Your app will have an admin dashboard for the admin user to administrate the site. (not needed at this stage)
alt text17. Document your application with a README that explains how to setup, configure and use your application.
