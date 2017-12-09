require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Let\'s play Rock, Paper, Scissors!'
  end

  run! if app_file == $0
end
