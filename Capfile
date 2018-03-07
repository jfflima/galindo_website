set :deploy_config_path, 'tools/cap/deploy.rb'
set :stage_config_path, 'tools/cap/deploy'

require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/composer'

Dir.glob('tools/cap/tasks/**/*.rb').each { |r| import r }
