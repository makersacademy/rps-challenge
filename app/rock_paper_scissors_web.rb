require 'sinatra/base'

class RockPaperScissorsWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new_game' do
    erb :new_game
  end

end