require 'capistrano/all'

  stages = "production"
  set :application, 'my_app_name'
  set :repo_url, 'git@github.com:capistrano/capistrano.git'
  set :deploy_to, '/var/www/'
  set :stage, :production
  role :app, %w{}

  require 'capistrano/setup'
  require 'capistrano/deploy'
  Dir.glob('capistrano/tasks/*.rake').each { |r| import r }

  Capistrano::Application.invoke("production")
  Capistrano::Application.invoke("deploy")
