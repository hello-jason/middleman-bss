[![Dependency Status](https://gemnasium.com/hello-jason/middleman-bss.svg)](https://gemnasium.com/hello-jason/middleman-bss)

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

* This is your project, so you'll want to remove the included `.git` directory after initializing a new project.
```
rm -rf .git
```

---

*That's it! Initialize your own git repo now, if you like. Delete everything above after initializing a project, and keep the content below as decent starting documentation for your project.*

---

# Middleman Website

Written with [Ruby](https://www.ruby-lang.org/en/)+[Middleman](http://middlemanapp.com)

**Included packages:**

* [Middleman](http://middlemanapp.com/)
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
* Live Reload

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

* Install JavaScript runtime
You need a JS runtime. For [Nodejs](http://nodejs.org/), I suggest installing via [nvm](https://github.com/creationix/nvm). For [therubyracer](https://github.com/cowboyd/therubyracer), add `gem "therubyracer": "x.x.x"` to your Gemfile, then run `bundle install`

* Install dependencies

```
gem install bundler && bundle install
```

* Copy `source/environment_variables.rb.sample` to `source/environment_variables.rb`
* Set `site_url_production` and `site_url_development` in `source/environment_variables.rb`

* Start Middleman server

```
bundle exec middleman
```

## Building

* Run the following to build your website locally into a `build` folder

```bash
bundle exec middleman build
```

## Deploying
Middleman-deploy can deploy a site via rsync, ftp, sftp, or git. Configure the deployment section of `config.rb`, then run the deploy command. Note, this will build for you before deploying.
```bash
bundle exec middleman deploy
```
