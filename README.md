# Alexandria

Alexandria is a simple Ruby on Rails application designed to manage a personal library. The application allows close friends and family to create user accounts and manage books by borrowing, listing, retrieving, and adding them to the library.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- **Ruby version:** 3.1.0
- **Rails version:** 7.0.4
- **Database:** PostgreSQL

## System Dependencies

Make sure you have the following installed:

- Ruby
- Rails
- PostgreSQL
- Bundler

## Setup

### Configuration

1. Clone the repository:

```sh
git clone https://github.com/gabrielgomeso/alexandria.git
cd alexandria
```

2. Install the dependencies:

```sh
bundle install
```

3. Set up the database:

```sh
rails db:create
rails db:migrate
```

### Running the Application

To start the Rails server, run:

```sh
rails server
```

Then, open your browser and navigate to http://localhost:3000 to access the application.

### Features

- User authentication for close friends and family
- Borrow, list, retrieve, and add books to the library
- Styled using BulmaCSS
