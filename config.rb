# ========================================================================
# Copyright 2011-2014 Immense Networks, LLC
# http://immense.net
# ========================================================================

# ========================================================================
# Site settings
# ========================================================================
set :site_title,            "Middleman Seed"
set :site_description,      "Default meta description."
set :site_url_development,  "http://change.this"
set :site_url_production,   "http://change.this"
set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

set :sass, line_comments: false, style: :nested

activate :i18n
# Enable cache buster
activate :asset_hash, :exts => ['.css', '.png', '.jpg', '.gif']
# Use relative URLs
activate :relative_assets


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
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

# ========================================================================
# Helpers
# ========================================================================

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
#activate :livereload

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

end


# ========================================================================
# Development-specific configuration
# ========================================================================
configure :development do
  activate :directory_indexes
  set :site_url, "#{site_url_development}"
end

# ========================================================================
# Build-specific configuration
# ========================================================================
configure :build do
  set :site_url, "#{site_url_production}"
  set :sass, style: :compressed
  activate :minify_css
  #activate :minify_html
  activate :minify_javascript
  activate :gzip
  # Create favicon and device-specific icons
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
