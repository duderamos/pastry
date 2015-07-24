worker_processes 1
app_root = File.expand_path('../../', __FILE__)
pid "#{app_root}/tmp/pids/unicorn.pid"
listen "#{app_root}/tmp/sockets/unicorn.sock"
stderr_path "#{app_root}/log/unicorn.log"
stdout_path "#{app_root}/log/unicorn.log"

