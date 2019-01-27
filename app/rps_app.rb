require 'sinatra/base'

class RPSApp < Sinatra::Base
  get '/' do
    'Let\'s play Rock, Paper, Scissors!'
  end

  run! if app_file == $0
end
