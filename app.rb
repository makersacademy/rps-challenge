require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    'Welcome to Rock Paper Scissors!'
  end

  run! if app_file == $0
end
