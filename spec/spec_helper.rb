$:.unshift(File.join(File.expand_path(File.dirname(__FILE__)), '..'))

require 'environment'

Bundler.require :test, :development

require 'latest_temperature'
