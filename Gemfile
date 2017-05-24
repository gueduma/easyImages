source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.0'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'sqlite3'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug', platform: :mri

end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  gem 'rspec-rails'
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'vcr'
  gem 'webmock'
end

gem 'mysql2'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'
gem 'bootstrap-generators', '~> 3.3.4'
gem 'feedjira' # parse RSS
gem 'record_tag_helper'
gem 'pismo' # extrai metadados da página html (e.g. favicon)
gem 'acts-as-taggable-on' # tags para os feeds e para os itens (keywords)
gem 'jquery-ui-rails' # para o calendário
gem 'ruby-readability', require: 'readability' # versão legível da página
gem 'opengraph_parser' # metatags opengraph
gem 'glib2'
gem 'ots' # keywords
gem 'devise' # authenticação de usuários
gem 'carrierwave', '1.0.0'
gem 'carrierwave-data-uri'
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"
