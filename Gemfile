source "http://rubygems.org"

group :production do
  gem 'jekyll', '~> 4.2.2'
  # Markdown renderer
  gem 'kramdown', '~> 2.4.0'
  # Syntax highlighter
  gem 'rouge', '~> 3.28.0'

  # Needed because of Jekyll + Ruby 3 bug https://github.com/jekyll/jekyll/issues/8523
  gem 'webrick', '~> 1.7.0'
end

group :jekyll_plugins do
  gem 'jekyll-tagging', '~> 1.1.0'
  gem 'jekyll-paginate', '~> 1.1.0'
  gem 'jekyll-sitemap', '~> 1.4.0'
  gem 'jekyll_asset_pipeline', :require => 'jekyll_asset_pipeline', :git => 'https://github.com/Kami/jekyll-asset-pipeline.git', :branch => 'master'

  # Asset pipeline plugin dependencies
  # NOTE: YUI compressor crashes when trying to compress latest version of jQuery so we use more
  # recent closure compiler
  gem 'closure-compiler', '~> 1.1.14'
  gem 'yui-compressor', '~> 0.12.0'
end
