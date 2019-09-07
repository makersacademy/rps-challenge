require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :register
  end

  post '/start_game' do
    erb :start
  end

  get '/play' do
    # rps_random = game.computer_choice
    # winner = 
    'The winner is Maria'
  end

end
