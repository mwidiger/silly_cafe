# README

Next steps:

* Cache discounts and available items so that the user doesn't get an error at checkout in the case where discounts, items, or prices change while the user is checking out.

* Use `rails_admin` gem or similar to allow site admins to modify prices, items, discounts, etc.

* Add unit and integration tests

* Add a lot of error checking around params

* Use `.includes` on activerecord calls so that not so many queries are hitting the db on each html request

* Add JS/React elements to make the shopping cart more SPA
