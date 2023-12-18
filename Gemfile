source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in bgit-accounting.gemspec.
gemspec

gem "pg"

gem "sprockets-rails"

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"

gem "json_seeds-rails", github: "robotex82/json_seeds-rails"
gem "rails-dummy", github: "robotex82/rails-dummy", branch: "feature/ruby-3-2-compatibility"

git "https://github.com/content-management-on-rails/cmor.git", branch: "main" do
  gem "cmor"
  gem "cmor-core"
  gem "cmor-core-backend"
end

git "https://github.com/rails-administrador/administrador" do
  gem "administrador", path: "~/projects/gems/administrador"
end
