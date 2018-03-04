# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Images

### User login and Add Item

!["Screenshot of homepage"](https://github.com/al8876/jungle-rails/blob/master/docs/login_and_add.gif?raw=true)

Users can login to Jungle to access their account. Once logged in, users can add items to their account.

### Homepage of Jungle

!["Screenshot of homepage"](https://github.com/al8876/chatter/blob/master/docs/Screen%20Shot%202018-02-23%20at%2012.06.10%20AM.png?raw=true)

User can input a new username and display message.


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
