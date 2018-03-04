# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Images

### User login and adding items

!["Screenshot of homepage"](https://github.com/al8876/jungle-rails/blob/master/docs/login_and_add.gif?raw=true)

Users can login to Jungle to access their account. Once logged in, users can add items to their account.

### Changing quntity and checkout

!["Screenshot of checkout"](https://github.com/al8876/jungle-rails/blob/master/docs/change_quantity.gif?raw=true)

Users can change quantity of their order and checkout using Stripe API.

### Order confirmation

!["Screenshot of order review"](https://github.com/al8876/jungle-rails/blob/master/docs/order_confirmation.gif?raw=true)

Users are taken to an order confirmation after order is completed.

### Product Review

!["Screenshot of order review - not logged in"](https://github.com/al8876/jungle-rails/blob/master/docs/review_not_user.gif?raw=true)

Users can leave reviews for purchased products with a rating out of 5.

If users are not logged in, they are prompted to login first before submitting their review.

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
