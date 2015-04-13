# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'sot'
  app.identifier = 'sot'
  app.codesign_certificate = 'iPhone Developer: Kingsley Hendrickse (NJJTXG6VWK)'
  app.provisioning_profile = '/Users/kings/Sot_dev_profile.mobileprovision'
end
