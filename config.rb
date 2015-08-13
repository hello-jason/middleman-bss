# ========================================================================
# Hello Jason
# http://hellojason.net
# ========================================================================

# Copy ./source/environment_variables.example to ./source/environment_variables.rb
# then update settings there.
require "./source/environment_variables.rb"

# ========================================================================
# Site settings
# ========================================================================
set :site_title,            "Middleman Site"
set :site_description,      "This is an example meta description."
set :site_url_production,   ENV['site_url_production']
set :site_url_development,  ENV['site_url_development']
set :css_dir,               'css'
set :js_dir,                'js'
set :images_dir,            'img'
set :fonts_dir,             'fonts'

# Sitemap URLs (use trailing slashes)
set :url_sample,            "/sample/"
# Place additional URLs here...

# Sitemap XML
require "builder"
page "/sitemap.xml", :layout => false

# Slim template engine
require "slim"

# Internationalization
activate :i18n

# Use relative URLs
activate :relative_assets

# Pretty URLs
activate :directory_indexes

# Autoprefixer
activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 9']
  config.cascade  = false
  config.inline   = false
end

# Reload the browser automatically whenever files change
activate :livereload

# ========================================================================
# Page options, layouts, aliases and proxies
# ========================================================================

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html",
# :locals => {:which_fake_page => "Rendering a fake page with a local
# variable" }

# ========================================================================
# Helpers
# ========================================================================

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

helpers do

  # Gets partials from the _partials directory
  def _partial(partial_filename)
    partial "_partials/#{partial_filename}"
  end

  # Formats li item, and determines when to put class=active on li element
  # (according to Bootstrap >3.1.1 spec)
  def nav_li(label, url, css_class="", icon="")

    # Determine if icon is specified
    nav_icon = ""
    unless icon.nil? or icon.empty?
      nav_icon = " <i class='fa #{icon}'></i>"
    end

    # Normalize name string for use as HTML class
    li_classes = ""
    unless css_class.nil? or css_class.empty?
      # Assign processed name to variable
      li_classes = "#{css_class}"
    else
      label_formatted = label.downcase.tr(" ", "-")
      li_classes = "nav-item-#{label_formatted}"
    end

    if current_page.url == url
      li_classes += " active"
    end

    "<li class='#{li_classes}'><a href='#{site_url}#{url}'>#{label}#{nav_icon}</a></li>"
  end

end


# ========================================================================
# Development-specific configuration
# ========================================================================
configure :development do
  set :site_url, "#{site_url_development}"
end

# ========================================================================
# Build-specific configuration
# ========================================================================
configure :build do
  set :site_url, "#{site_url_production}"
  set :sass, line_comments: false, style: :nested
  
  activate :minify_css
  activate :minify_html
  activate :minify_javascript
  activate :gzip
  
  # Enable cache buster
  activate :asset_hash, :exts => ['.css', '.png', '.jpg', '.gif']

  # Ignore files/dir during build process
  ignore "environment_variables.rb"
  ignore "environment_variables.rb.sample"
  ignore "favicon_template.png"
  ignore "sitemap.yml"
  ignore "imageoptim.manifest.yml"

  # Compress and optimise images during build
  # Documentation: https://github.com/plasticine/middleman-imageoptim
  activate :imageoptim do |options|
    # Image extensions to attempt to compress
    options.image_extensions = %w(.png .jpg .gif .svg)
    # Cause image_optim to be in shouty-mode
    options.verbose = false
  end
  
  # Create favicon and device-specific icons
  # Edit favicon_template.png for custom icon
  activate :favicon_maker, :icons => {
    "favicon_template.png" => [
      { icon: "apple-touch-icon-152x152-precomposed.png" },
      { icon: "apple-touch-icon-144x144-precomposed.png" },
      { icon: "apple-touch-icon-120x120-precomposed.png" },
      { icon: "apple-touch-icon-114x114-precomposed.png" },
      { icon: "apple-touch-icon-76x76-precomposed.png" },
      { icon: "apple-touch-icon-72x72-precomposed.png" },
      { icon: "apple-touch-icon-60x60-precomposed.png" },
      { icon: "apple-touch-icon-57x57-precomposed.png" },
      { icon: "apple-touch-icon-precomposed.png", size: "57x57" },
      { icon: "apple-touch-icon.png", size: "57x57" },
      { icon: "favicon-196x196.png" },
      { icon: "favicon-160x160.png" },
      { icon: "favicon-96x96.png" },
      { icon: "favicon-32x32.png" },
      { icon: "favicon-16x16.png" },
      { icon: "favicon.png", size: "16x16" },
      { icon: "favicon.ico", size: "64x64,32x32,24x24,16x16" },
      { icon: "mstile-144x144", format: "png" },
    ]
  }
end

# ========================================================================
# Deployment-specific configuration
# ========================================================================
# Middleman-deploy can deploy a site via rsync, ftp, sftp, or git.
# Documentation: https://github.com/karlfreeman/middleman-deploy
# ========================================================================
activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method       = :rsync
  deploy.host         = 'server'
  deploy.user         = 'username'
  deploy.path         = 'path/to/docroot'
  # Optional Settings
  # deploy.port       = 5309 # ssh port, default: 22
  # deploy.clean      = true # remove orphaned files on remote host, default:  false
end
