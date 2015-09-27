worker_processes 1
preload_app true
listen 8080
pid "/home/isucon/webapp/ruby/unicorn.pid"
stderr_path '/home/isucon/logs/unicorn_stderr.log'
stdout_path '/home/isucon/logs/unicorn_stdout.log'
