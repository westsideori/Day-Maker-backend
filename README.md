# README

# DayMaker (backend)

DayMaker is a day-planning application that creates an itinerary of restaurants and activities at the click of a button.

## Installation

Ruby version: 2.6.1

Run bundle install to install all Ruby gems and dependencies.

```zsh
bundle install
```

Run rails db:create to set up database. This app uses Postgresql for the database.

```zsh
rails db:create
```

Run rails db:migrate to create tables and migrate them to the database.

```zsh
rails db:migrate
```

Run rails db:seed to seed the database with the data necessary to run the app.

```zsh
rails db:seed
```

## Usage

To run the backend, run rails s. (Make sure the backend is running on a different port than the frontend)

```zsh
rails s
```

## Roadmap

Using Foursquare API to pull in real venue data.

## Authors and acknowledgment

Built with passion by Ori Markowitz & June Kang 2021
