#Armor

A sample [Sinatra](http://www.sinatrarb.com/) application ready for deployment to [Heroku](http://heroku.com). Using Twitter's [Bootstrap](http://twitter.github.com/bootstrap/) project for style. Both projects are great for rapid prototyping.

**Get Started**

* Clone then cd to this repo.

**Add Bootstrap**

* `$ git submodule init`
* `$ git submodule update`

**Commit**

* `$ git add *` (Make sure all new files are added to the repo)
* `$ git commit -m 'first commit'`

**Build Bootstrap**

The layout view points to a css file that needs to be built using bootstrap's makefile

* `$ cd public`
* `$ make bootstrap`

**Test Locally using the [Unicorn](http://rubygems.org/gems/unicorn) gem**

* `$ unicorn`

Then just build.

**Push to Heroku**

* `$ heroku create [optional-app-name]` (You can rename your app with `heroku rename`)
* `$ git push heroku master`

Here's some helpful reading on [Heroku](https://devcenter.heroku.com/articles/git-submodules) and GIT submodules.

[More info](http://devcenter.heroku.com/articles/rack) using Rack apps in Heroku, and be sure to check out the Sinatra [starter guide](http://www.sinatrarb.com/intro).

*Inspired by Blake Mizerany's [Sinatra-Heroku-App](https://github.com/bmizerany/heroku-sinatra-app).*
