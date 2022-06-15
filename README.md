# Battle

A two-player web game, with each player inflicting damage and reduce hitpoints.

## Features
* Takes name from two players
* Displays hitpoints of each player
* A player can each take turns to attack one another
* The player being attacked will see their hitpoints reduce

## Installation
1. Fork this repo, and clone to your local machine
2. Run the command `gem install bundler` (if you don't have bundler already)
3. When the installation completes, run `bundle`

## How to Use
1. Run the command `rackup` 
2. Open an browser with localhost:9292

## Tests
There are a series of tests which can be run with the following (from the directory):
```
rspec
```
To run tests from specific class files, this can be done by:
```
rspec spec/<filename>.rb
```
