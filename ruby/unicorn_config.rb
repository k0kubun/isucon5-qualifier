# -*- coding: utf-8 -*-
# http://unicorn.bogomips.org/Unicorn/Configurator.html

# You should `mkdir tmp` and `mkdir log`

worker_processes 12
preload_app true

listen "/tmp/unicorn.sock" # 絶対パスでなければならない点に注意！
timeout 600

pid "/home/isucon/webapp/ruby/unicorn.pid"
stderr_path '/home/isucon/logs/unicorn_stderr.log'
stdout_path '/home/isucon/logs/unicorn_stdout.log'

GC.respond_to?(:copy_on_write_friendly=) and GC.copy_on_write_friendly = true

after_fork do |server, worker|
#  GC.disable if RAILS_ENV == 'production'
end
