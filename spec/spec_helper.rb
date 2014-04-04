$:.unshift(File.join(File.expand_path(File.dirname(__FILE__)), '..'))

require 'environment'

Bundler.require :test

require 'latest_temperature'
