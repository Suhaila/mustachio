# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

unless ENV['RACK_ENV'] === 'production'
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
    gem.name = "mustachio"
    gem.homepage = "http://github.com/afeld/mustachio"
    gem.license = "MIT"
    gem.summary = %Q{automatic mustachifying of any image}
    gem.description = %Q{Adds a 'mustachify' shortcut to magickly.}
    gem.email = "aidan.feldman@gmail.com"
    gem.authors = ["Aidan Feldman"]
    # dependencies defined in Gemfile
  end
  Jeweler::RubygemsDotOrgTasks.new

  require 'rspec/core'
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec) do |spec|
    spec.pattern = FileList['spec/**/*_spec.rb']
  end

  RSpec::Core::RakeTask.new(:rcov) do |spec|
    spec.pattern = 'spec/**/*_spec.rb'
    spec.rcov = true
  end

  task :default => :spec

  require 'rdoc/task'
  Rake::RDocTask.new do |rdoc|
    version = File.exist?('VERSION') ? File.read('VERSION') : ""

    rdoc.rdoc_dir = 'rdoc'
    rdoc.title = "mustachio #{version}"
    rdoc.rdoc_files.include('README*')
    rdoc.rdoc_files.include('lib/**/*.rb')
  end
end

require 'net/http'
namespace :scheduler do
  desc "Ping the application to keep Heroku from idling"
  task :ping do
    uri = URI.parse("http://#{ENV['HOST']}/ping")
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)
  end
end
