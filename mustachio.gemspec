# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "mustachio"
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aidan Feldman"]
  s.date = "2012-10-10"
  s.description = "Adds a 'mustachify' shortcut to magickly."
  s.email = "aidan.feldman@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "bookmarklet.js",
    "config.ru",
    "config/staches.yml",
    "lib/mustachio.rb",
    "lib/mustachio/app.rb",
    "lib/mustachio/factories.rb",
    "lib/mustachio/public/favicon.ico",
    "lib/mustachio/public/images/dubya.jpeg",
    "lib/mustachio/public/images/guy_hecker.jpeg",
    "lib/mustachio/public/images/staches/colonel_mustard.png",
    "lib/mustachio/public/images/staches/grand-handlebar.png",
    "lib/mustachio/public/images/staches/mustache_02_blue.png",
    "lib/mustachio/public/images/staches/mustache_03.png",
    "lib/mustachio/public/images/staches/mustache_03.svg",
    "lib/mustachio/public/images/staches/mustache_04.png",
    "lib/mustachio/public/images/staches/mustache_04_blue.png",
    "lib/mustachio/public/images/staches/mustache_07.png",
    "lib/mustachio/public/images/staches/mustache_13_red.png",
    "lib/mustachio/public/images/staches/painters-brush.png",
    "lib/mustachio/public/images/staches/petite-handlebar.png",
    "lib/mustachio/rekognition.rb",
    "lib/mustachio/shortcuts.rb",
    "lib/mustachio/views/face_api_dev_challenge.haml",
    "lib/mustachio/views/ga.haml",
    "lib/mustachio/views/gallery.haml",
    "lib/mustachio/views/index.haml",
    "lib/mustachio/views/test.haml",
    "mustachio.gemspec",
    "spec/fixtures/vcr_cassettes/big_obama.yml",
    "spec/fixtures/vcr_cassettes/dubya.yml",
    "spec/fixtures/vcr_cassettes/small_obama.yml",
    "spec/spec_helper.rb",
    "spec/support/big_obama.jpeg",
    "spec/support/dubya.jpeg",
    "spec/support/small_obama.jpeg",
    "spec/unit/analyser_spec.rb",
    "spec/unit/job_spec.rb",
    "spec/unit/magickly_spec.rb"
  ]
  s.homepage = "http://github.com/afeld/mustachio"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "automatic mustachifying of any image"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, ["~> 1.2"])
      s.add_runtime_dependency(%q<dragonfly>, ["~> 0.9.0"])
      s.add_runtime_dependency(%q<magickly>, [">= 0"])
      s.add_runtime_dependency(%q<rest-client>, ["~> 1.6"])
      s.add_runtime_dependency(%q<addressable>, ["~> 2.2"])
      s.add_runtime_dependency(%q<haml>, ["~> 3.0"])
      s.add_runtime_dependency(%q<imagesize>, ["~> 0.1"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5"])
      s.add_development_dependency(%q<debugger>, [">= 0"])
    else
      s.add_dependency(%q<sinatra>, ["~> 1.2"])
      s.add_dependency(%q<dragonfly>, ["~> 0.9.0"])
      s.add_dependency(%q<magickly>, [">= 0"])
      s.add_dependency(%q<rest-client>, ["~> 1.6"])
      s.add_dependency(%q<addressable>, ["~> 2.2"])
      s.add_dependency(%q<haml>, ["~> 3.0"])
      s.add_dependency(%q<imagesize>, ["~> 0.1"])
      s.add_dependency(%q<jeweler>, ["~> 1.6"])
      s.add_dependency(%q<rack-test>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.5"])
      s.add_dependency(%q<debugger>, [">= 0"])
    end
  else
    s.add_dependency(%q<sinatra>, ["~> 1.2"])
    s.add_dependency(%q<dragonfly>, ["~> 0.9.0"])
    s.add_dependency(%q<magickly>, [">= 0"])
    s.add_dependency(%q<rest-client>, ["~> 1.6"])
    s.add_dependency(%q<addressable>, ["~> 2.2"])
    s.add_dependency(%q<haml>, ["~> 3.0"])
    s.add_dependency(%q<imagesize>, ["~> 0.1"])
    s.add_dependency(%q<jeweler>, ["~> 1.6"])
    s.add_dependency(%q<rack-test>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.5"])
    s.add_dependency(%q<debugger>, [">= 0"])
  end
end

