# Bookers2

A Ruby on Rails application for practicing CRUD operations with book reviews, based on the original Bookers app.

## Overview

**Bookers2** is a training project created during a Ruby on Rails course. Users can register books they have read and post impressions (title and body), with full CRUD functionality and user authentication.

## Features

- User registration, login, and authentication (Devise)
- Top page linking to the books list
- Book list with:
  - Title and body display
  - Profile image and user name
  - Buttons to view, edit, and delete each book
- Sidebar form to create a new book
- Book detail page
- Edit page with update and navigation links
- Flash messages for success and error states
- Validation to ensure title and body are not blank
- Confirmation dialog when deleting books
- Responsive design using Bootstrap 4

## Tech Stack

- Ruby 3.1.2
- Rails 6.1.7.10
- SQLite3 (default development database)
- Bootstrap 4.6
- Devise (user authentication)
- ERB templating

## Setup

1. Clone this repository:
    ```bash
    git clone https://github.com/your-username/bookers2.git
    cd bookers2
    ```

2. Install dependencies:
    ```bash
    bundle install
    yarn install
    ```

3. Set up the database:
    ```bash
    rails db:migrate
    rails db:seed # (if seeds.rb is used)
    ```

4. Start the server:
    ```bash
    rails server
    ```

5. Access the app at:  
    [http://localhost:3000](http://localhost:3000)

## Notes

- Scaffold was not used; controller and views were built manually.
- Flash messages include "successfully" on success, and "error" on failure.
- Bootstrap, jQuery, and Popper.js are managed via Yarn/Webpacker.
- FontAwesome is loaded via KitCode.
- This project is for **educational purposes only**.

## License

This project is intended for educational purposes only and is not licensed for redistribution or reuse.
