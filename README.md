# PizzaRestaurant

A Objective-C console application to manage pizza orders


## Usage

You have different commands to interact with the application:

### Ask for pizza

To ask for a custom pizza, using the following syntax

`pizzaSize [topping1] ... [toppingN]`

* `pizzaSize` could be `small`, `medium` or `large`
* `topping1' to `toppingN` could be any additional ingredient like `pepperoni` `mushroom` `anchovies`

Example:

`medium mushroom pepperoni` 



To ask for pre-made pizzas

* `pepperoni` used to ask for a `large pepperoni` pizza
* `canadian` used to ask for a `large bacon pepperoni mushrooms` pizza

### Change managers

* `manager1` to switch to manager1 (more restrictive and with no pizza upgrades)
* `manager2` to switch to manager2 (no restrictions in toppings, upgrades every pizza to large size)
* `nomanager` (default) to switch to no-manager behavior (only ask and receive your pizza)

Also, `manager2` has implememted a DeliveryService to deliver the pizza and make an history of deliveries.
After delivering, this DeliveryService uses a DeliveryCar to take out the pizza for the client

### Show delivery info

* `deliveryinfo` shows a list of the current deliveries 
(actually, only deliveries managed by `manager2` have a DeliveryService to record history)

### Show inline help

Using `?` you will get a list of available commands listed in this README

