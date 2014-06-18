# Jason's Middleman Seed

This is a project template to be used for new [Middleman](http://middlemanapp.com) projects. It comes with Bootstrap, Slim, and Sass. Install the project template, then use it to initialize a new Middleman project.

## To install and start Middleman server

```bash
git clone git@github.com:hello-jason/seed-middleman-jason.git ~/.middleman/seed-middleman-jason
middleman init project-name --template=seed-middleman-jason
cd project-name
bundle install
bundle exec middleman
```

## Configuration

* Set site_title, site_description, etc. in `config.rb`
* Replace `source/favicon_template.png` with appropriate graphic
* Build away!

## Updating

```bash
git fetch ~/.middleman/seed-middleman-jason
git pull ~/.middleman/seed-middleman-jason
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
* [Middleman Bourbon](http://bourbon.io/)

**Included features:**

* Image optimization
* CSS3 mixins
* CSS reset
* HTML5 layout
* Image compression
* Asset minification

## License

Copyright (c) 2014 Jason Cross

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
