require 'watir'
require 'rspec'
require 'byebug'

URL ||= YAML.load_file(File.dirname(__FILE__) + '/url.yml')

Watir.default_timeout = 30