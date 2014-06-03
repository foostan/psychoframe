# config valid only for Capistrano 3.1
lock '3.2.1'

namespace :deploy do
  desc 'Member join'
  task :member_join, :hostname, :ipaddr  do |task, args|
    puts "hostname: #{args.hostname}, ipaddr: #{args.ipaddr}"
  end
end
