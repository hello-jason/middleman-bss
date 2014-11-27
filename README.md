# Middleman (Bootstrap+Slim+SCSS)

A [Middleman](http://middlemanapp.com) starter theme with Twitter Bootstrap, Slim templates, and SCSS.

## Install this template

* Clone **middleman-bss** into `~/.middleman`. You will need to create this directory if it doesn't exist.

```
git clone https://github.com/hello-jason/middleman-bss.git ~/.middleman/middleman-bss
```

## Using this template

* Create a new Middleman project based on this template.

```
middleman init project-name --template=middleman-bss
```

---

*Delete everything above after initializing a project, and keep the content below as decent starting documentation for your project.*

---

**Included packages:**

* [Middleman](http://middlemanapp.com/)
* [HTML5 Boilerplate](http://html5boilerplate.com/)
* [Slim](http://slim-lang.com/)
* [Sass](http://sass-lang.com/)
* [Bootstrap 3 Sass](https://github.com/twbs/bootstrap-sass)
* [Font Awesome](http://fontawesome.io)
* [Tilt](https://github.com/rtomayko/tilt)
* [jQuery](http://jquery.com/)
* [Favicon Maker](https://github.com/follmann/middleman-favicon-maker)

**Included features:**

* Autoprefixer
* CSS reset
* HTML5 layout
* Image compression
* Asset minification
* Favicon generation

# Middleman Website

Written with [Ruby](https://www.ruby-lang.org/en/)+[Middleman](http://middlemanapp.com)

## Setup in development

* Install [rbenv](https://github.com/sstephenson/rbenv) and [ruby-build](https://github.com/sstephenson/ruby-build#installing-as-an-rbenv-plugin-recommended)

* Clone project and cd into project directory

```bash
git clone repo-path.git
cd project-dir
```

* Install Ruby version set in `.ruby-version`

```
rbenv install && rbenv rehash
```

* Setup local ruby (this number should reflect the ruby version that was just installed)

```
rbenv local 2.1.5
```

* Install dependencies

```
gem install bundler && bundle install
```

* Copy `source/environment_variables.sample.rb` to `source/environment_variables.rb`
* Set `site_url_production` and `site_url_development` in `source/environment_variables.rb`

* Start Middleman server

```
bundle exec middleman
```

## Deploying

* Build the project, then copy the contents of `build` to your web server.

```bash
bundle exec middleman build
```
