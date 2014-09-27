takeaway
========

Makers Challenge #04 - takeaway
-------------------------------

> #### Briefing
> Test time: Friday, the entire day + the weekend if you need it
> Feel free to use google, your notes, books, etc but work on your own

#### Task 1

- Reopen the Array class or subclass it.
- Rewrite the inject method. Write a test for it first. Don't worry about returning an enumerator, assume a block is always given
- Name your method differently (that is, not inject() or subclass Array) because rspec uses inject() internally, so the tests will fail with weird messages unless your implementation of inject is perfect.
- If you would like a challenge, rewrite inject using two approaches: using iterators and using recursion but it's not required to pass the test.

#### Task 2

- Write a class Takeaway.
- Implement the following functionality: list of dishes with prices
- placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
- The text sending functionality should be implemented using Twilio API. You'll need to register for it. It's free.
- Use twilio-ruby gem to access the API
- Use a Gemfile to manage your gems
- Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
- However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent
- A free account on Twilio will only allow you to send texts to "verified" numbers. Use your mobile phone number, don't worry about the customer's mobile phone.


> Good luck!

CRC Cards
---------

TAKEAWAY
it should:
- be able to return a list of dish names and prices
- be able to return the price of a dish by its name
- be able to add a quantity of a dish to the order

it interacts with:
- Order
- Dish
- LineItem

ORDER
it should:
- have a list of LineItems
- be able to accept a LineItem
- be able to calculate a grand-total

it interacts with:
- Order
- Dish
- LineItem

DISH
it should:
- have a name
- have a price

it only gets interacted with

LINEITEM
it should:
- be able to accept a dish
- be able to accept a quantity
- be able to calculate a total

it interacts with:
- 