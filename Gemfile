source "https://rubygems.org"

group :jekyll_plugins do
  gem "github-pages" # Includes jekyll
  gem "webrick" # Make jekyll work on ruby 3

  # Basic theme
  gem "minima", "~> 2.5"

  # Plugins
  gem "jektex"
  gem 'jekyll-compose'
  gem "jekyll-default-layout"
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-optional-front-matter"
  gem "jekyll-readme-index"
  gem 'jekyll-sitemap'
  gem "jekyll-titles-from-headings"
  gem 'jekyll-twitter-plugin'
  gem "jekyll-youtube"
end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end
