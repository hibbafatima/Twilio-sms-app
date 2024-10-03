# README

Real-Time SMS Notification System with Rails 7

** Overview

This Ruby on Rails application demonstrates a real-time SMS notification system using the latest features of Rails 7. The system allows triggering SMS notifications in response to specific events, such as user sign-ups, and integrates with the Twilio API for sending real-time SMS messages.

** Key Features

- Trigger-based notifications: 
Set up triggers within the application to initiate SMS notifications based on user actions or specific application states.
- SMS API Integration: 
Integrate the Twilio API for sending real-time SMS notifications.
- Front-end Interface: 
A minimal front-end interface for user to sign up and get an SMS notification upon account creation

** Getting Started

* Prerequisites
Make sure you have the following installed on your system:

- Ruby version 3 or higher
- Rails version 7 or higher

* Installation

1. Install Ruby dependencies:

   bundle install

2. Set up the database:

   rails db:create
   rails db:migrate

* Configuration

1. Configure Twilio Credentials:

   Create a `config/credentials.yml.enc` file or use `rails credentials:edit` to add your Twilio credentials:

   twilio:
     account_sid: YOUR_TWILIO_ACCOUNT_SID
     auth_token: YOUR_TWILIO_AUTH_TOKEN
     phone_number: YOUR_TWILIO_PHONE_NUMBER

Sign up on Twilio to get the required credentials

* Usage

1. Start the Rails server:

   rails server

2. Visit [http://localhost:3000](http://localhost:3000) in your web browser.

3. Follow the application's interface to trigger and monitor SMS notifications.





