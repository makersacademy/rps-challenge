require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Rock, Paper, Scissors Game!!!!!'
  end


  run! if app_file == $0
end
