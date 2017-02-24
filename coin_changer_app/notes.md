#Coin Changer Kata

**AIM:**
* Write a coin changer program/app.
* Use a TDD approach

**REQUIREMENTS:**
* Write a function that takes a number of cents, and that returns a hash containing the least number of coins needed to generate the value of cents.

**Examples:**
* If you have 11 cents you should return { :dime => 1, :penny => 1 }
* If you have 31 cents you should return { :quarter => 1, :penny => 1 }
* If you have 93 cents you should return { :quarter => 3, :dime => 1, :nickel => 1, :penny => 3 }
