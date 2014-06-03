require 'capistrano/all'
require 'capistrano/setup'

module Psychoframe
  class Funnel
    def initialize
    end

    def run
      Capistrano::Application.invoke('serf')
      Capistrano::Application.invoke(event, *stdin_args)
    end

    private

    def stdin_args
      while line = STDIN.gets
        args = line.split(/\s/)
      end
      args
    end

    def event
      raise 'Missing SERF_EVENT' unless ENV.include?('SERF_EVENT')
      'deploy:' + ENV['SERF_EVENT'].gsub(/-/, '_')
    end
  end
end
