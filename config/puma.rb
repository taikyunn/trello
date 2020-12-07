threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }.to_i
threads threads_count, threads_count

bind 'tcp://0.0.0.0:3000'
environment ENV.fetch("RAILS_ENV") { "development" }
plugin :tmp_restart