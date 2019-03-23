require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :register
  end

  get '/play' do
    @player1_name = params['player1_name']
    erb :play
  end
end
