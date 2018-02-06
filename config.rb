# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

activate :blog do |blog|
    blog.permalink = "{title}.html"
    blog.sources = "blog/{title}.html"
    blog.layout = "blog"
end

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

activate :gzip

configure :build do
    activate :minify_css
    activate :minify_html
    activate :imageoptim
    activate :asset_hash
end

activate :livereload
activate :directory_indexes

# activate :deploy do |deploy|
#   deploy.deploy_method = :rsync
#   deploy.host          = ''
#   deploy.path          = ''
#   deploy.build_before = true
#   deploy.clean = true
# end
