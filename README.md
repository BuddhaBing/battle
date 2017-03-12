# Battle

[![Build Status](https://travis-ci.org/treborb/battle.svg?branch=master)](https://travis-ci.org/treborb/battle)
[![codecov](https://codecov.io/gh/treborb/battle/branch/master/graph/badge.svg)](https://codecov.io/gh/treborb/battle)

## [Makers Academy](http://www.makersacademy.com) - Week 3 - Paired Programming Challenge

## Technologies
* [Ruby v2.3.3](https://www.ruby-lang.org/en/)
* [Sinatra](http://www.sinatrarb.com/)
* [Rspec](http://rspec.info/)
* [Capybara](https://github.com/teamcapybara/capybara)

## Jump To
* [User Stories](#user-stories)
* [Installation](#install)
* [Usage](#usage)
* [Implemented Features](#features)
* [Tests](#tests)
* [Heroku Demo](#demo)
* [Screenshots](#screenshots)

## The Brief

Build a web application game called Battle using Ruby, Sinatra, RSpec, and Capybara

## <a name="user-stories">User Stories</a>

```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

***And some Advanced 'extension' User Stories:***
```
As a Player,
So I can play a suspenseful game of Battle,
I want all Attacks to deal a random amount of damage

As a lonely Player,
So I can keep my Battle skills up to scratch
I want to play a Computerised opponent

As a Player,
So I can enjoy a game of Battle with more variety,
I want to choose from a range of attacks I could make

As a Player,
So I can better enjoy a game of Battle,
I want some of my attacks to Paralyse an opponent (chance of losing their next attack)

As a Player,
So I can better enjoy a game of Battle,
I want one of my attacks to have a chance of Poisoning my Opponent (Opponent takes a small random amount of damage at the beginning of their turn)

As a Player,
So I can better enjoy a game of Battle,
I want to make an attack that has a chance of sending my Opponent to Sleep (Opponent definitely misses next turn)

As a Player,
So I can extend my joyous experience of Battle,
I want to have an attack that heals some of my Hit Points

As a Player,
So I can enjoy my game of Battle,
I want a sexy user interface
```

## <a name="install">Installation</a>
```
$ git clone https://github.com/treborb/example.git
$ cd example
$ rvm use 2.3.3 --install --binary --fuzzy
$ gem install bundler
$ bundle
```

## <a name="usage">Usage</a>

```
$ rackup
$ open http://localhost:9292
```

You can then input player one and two's names, select an avatar, and battle it out!

## <a name="tests">Running the tests</a>
```
$ rspec
```

## <a name="screenshots">Screenshots</a>

![Battle - Character Selection](https://d541d4157b28d9cb38c5-cf41a704c6c093350fcb8a1fb943b3e5.ssl.cf5.rackcdn.com/github-readme-images/battle/home.png)

![Battle - Fight!](https://d541d4157b28d9cb38c5-cf41a704c6c093350fcb8a1fb943b3e5.ssl.cf5.rackcdn.com/github-readme-images/battle/fight.png)
