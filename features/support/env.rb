require 'rspec'
require 'httparty'
require 'cucumber'
require 'json'
require 'pry-byebug'

env_path = './features/support/data.yml'
DATA = YAML.safe_load(ERB.new(File.read(env_path)).result, aliases: true)

CUCUMBER_PUBLISH_QUIET=true