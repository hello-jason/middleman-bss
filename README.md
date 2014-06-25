# Jason's Middleman Template

Website written with [Ruby](https://www.ruby-lang.org/en/)+[Middleman](http://middlemanapp.com)

## To install this Middleman template

```
git clone git@github.com:hello-jason/seed-middleman-jason.git ~/.middleman/seed-middleman-jason
middleman init project-name --template=seed-middleman-jason
```

## To install and start Middleman server

**Requirements**

* Install [rbenv](https://github.com/sstephenson/rbenv) and [ruby-build](https://github.com/sstephenson/ruby-build)

* Clone project

```bash
git clone UPDATEME
cd UPDATEME
```

* Install Ruby version

```
rbenv install && rbenv rehash
```

* Install dependencies

```
gem install bundler && bundle install
```

* Copy `source/environment_variables.sample.rb` to `source/environment_variables.rb`
* Set `site_url_production` and `site_url_development` in `source/environment_variables.rb`
* Replace `source/favicon_template.png` with appropriate graphic
* Start Middleman server

```
bundle exec middleman
```

## Deploying

* Build the project, then copy the contents of `build` to your web server.

```bash
bundle exec middleman build
```

## Additional info

**Included packages:**

* [Middleman](http://middlemanapp.com/)
* [HTML5 Boilerplate](http://html5boilerplate.com/)
* [Slim](http://slim-lang.com/)
* [Sass](http://sass-lang.com/)
* [Bootstrap 3 Sass](https://github.com/twbs/bootstrap-sass)
* [Font Awesome](http://fontawesome.io)
* [Tilt](https://github.com/rtomayko/tilt)
* [jQuery](http://jquery.com/)
* [Modernizr](http://modernizr.com/)
* [Favicon Maker](https://github.com/follmann/middleman-favicon-maker)

**Included features:**

* Image optimization
* CSS3 mixins
* CSS reset
* HTML5 layout
* Image compression
* Asset minification
