require_relative "./app"
run RPS
RPS.run! :port => 9292, :bind => '0.0.0.0'
