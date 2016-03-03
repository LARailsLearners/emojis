### Description

A collaborative emoji story maker application.

### Joining the Project

### Pull Requests, Merging, and PivotalTracker
Start a ticket on PivotalTracker and add yourslef as an owner.

#### Create a Branch 
`git checkout -b features/#114927735_add-bootstrap`  

Replace the number above with the number of the issue you are working on in Pivotal Tracker. Be sure to include the `#`

### To Install

Make sure you are using Ruby version 2.3.0 & Rails Version 4.2.5

$ `git clone https://github.com/LARailsLearners/emojis.git`  
$ `bundle install`  
$ `rails s`


### Test Coverage

Everytime you run tests locally, you will also regenerate Simplecov
coverage docs. Make sure you commit these last, after your PR has
already been approved.

https://github.com/colszowka/simplecov  
http://www.cakesolutions.net/teamblogs/brief-introduction-to-rspec-and-simplecov-for-ruby

----

##### Choose a Version Manager Tool 

A Version Manager allows you to easily install, manage, and work with multiple ruby environments from interpreters to sets of gems. This means you can have multiple version of Ruby installed and choose when you want to use them from project to project.

[RVM](https://rvm.io/)
[RBENV](https://github.com/rbenv/rbenv)

You don't have to do this but here's some information on using Gemsets.

#### Gemsets
[RVM Gemset Basics](https://rvm.io/gemsets/basics)   
RVM gives you compartmentalized independent ruby setups. This means that ruby, gems and irb are all separate and self-contained - from the system, and from each other.

---

### [Add Bootstrap](https://www.pivotaltracker.com/story/show/114927735)

https://rubygems.org/gems/bootstrap-sass  
https://github.com/twbs/bootstrap-sass

1. Add the bootstrap-sass gem to your `Gemfile`  
`gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'`
2. $ `bundle`
3. Rename `application.css` to `application.scss`
4. Import Bootstrap styles in `app/assets/stylesheets/application.scss`
```
/*
*= require_tree .
 *= require_self
 */
@import "bootstrap-sprockets";
@import "bootstrap";
```
5. Add `//= require bootstrap-sprockets` to `app/assets/javascripts/application.js`
```
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .
```

--- 
