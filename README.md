# **Bank Tech Test**

This project is part of the 10th Week of Makers Academy and it is a tech test that aims to practice OOP and TDD skills.

It consists on building a simple app that simulates a bank account with its inherent basic functionalities. The user interacts with the app using IRB, being able to make deposits, withdrawals and to access an account statement that displays the history of transactions with its associated dates and current balance at the moment of transaction.


## User Stories created from the Requirements:
```
As a client
So that I can safely save my money
I want to be able to make a deposit of a specific amount
```
```
As a client
So that I can take money from my account
I want to be able to make a withdrawal of a specific amount
```
```
As a client
So that I can keep track of my budget
I want to be able to check my balance between transactions
```
```
As a client
So that I can keep track of my transactions history
I want to be able to print a bank statement
```
```
As a client
So that my bank statement is more readable
I want to see the most recent transactions first
```
*From the assumption that a user account can't go into negative balance:*
```
As a bank manager
So that a client can't withdraw more money than what they have in their account
I want that it's impossible to withdraw an amount greater than the client's balance
```
*From the assumption that, when a new account is created, its balance is null:*
```
As a bank manager
So that a new account can be created
I want all accounts to be initialised with a balance of 0  
```


## Class Diagrams

<img width="222" alt="Screenshot 2021-01-13 at 02 16 01" src="https://user-images.githubusercontent.com/65411964/104397883-9375b000-5545-11eb-92b3-7c06e90bab23.png">

<img width="156" alt="Screenshot 2021-01-13 at 02 16 09" src="https://user-images.githubusercontent.com/65411964/104397910-a0929f00-5545-11eb-8fa3-07b55474be74.png">

<img width="290" alt="Screenshot 2021-01-13 at 02 09 39" src="https://user-images.githubusercontent.com/65411964/104400670-b9518380-554a-11eb-875b-3dfc1619b3cb.png">


## Acceptance criteria:

Given a client that makes a deposit of 1000 on 10-01-2012, a deposit of 2000 on 13-01-2012 and a withdrawal of 500 on 14-01-2012, when printing their bank statement they would see:

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Tech used:

* This project is being written in Ruby.
* Testing is being run by RSpec - 11 examples, 0 failures.
* Coverage is performed by SimpleCov - 87/87 lines in 6 files(100.0%) covered.
* Linting is performed by Rubocop


## How to run the app:

```
$ git clone git@github.com:margmartelo/bank-tech-test.git
$ cd bank-tech-test
$ bundle
$ irb
$ require './lib/account.rb'
```

## How to run the tests:
```
$ rspec
```

## Example Simulation of App


<img width="1146" alt="Screenshot 2021-01-13 at 01 20 08" src="https://user-images.githubusercontent.com/65411964/104394528-b6e92c80-553e-11eb-9ec4-c5daf302c4d4.png">
 
