# Jason's Middleman Template

This is a project template to be used for new [Middleman](http://middlemanapp.com) projects. It comes with Bootstrap, Slim, and Sass. Install the project template, then use it to initialize a new Middleman project.

## To install this Middleman template

```
git clone git@github.com:hello-jason/seed-middleman-jason.git ~/.middleman/seed-middleman-jason
middleman init project-name --template=seed-middleman-jason
```

## To build a project based on this template

**Requirements**

* [Bundler](http://bundler.io/)
* [rbenv](https://github.com/sstephenson/rbenv)
* [ruby-build](https://github.com/sstephenson/ruby-build)

* Clone project

```bash
git clone UPDATEME
cd UPDATEME
```

* Install Ruby version

```
rbenv install
```

* Install dependencies

```
bundle install
```

* Start Middleman server

```
bundle exec middleman
```

## Configuration

* Copy `source/environment_variables_sample.rb` to `source/environment_variables.rb`
* Set `site_url_production` and `site_url_development` in `environment_variables.rb`
* Set site_title, site_description, etc. in `config.rb`
* Replace `source/favicon_template.png` with appropriate graphic
* Build away!

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
