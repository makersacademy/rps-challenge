require 'sinatra/base'

# require './lib/player'

# require './lib/game'

class App < Sinatra::Base

  get '/' do
    erb(:name_input)
  end

  post '/names' do
    # $player_1 = Player.new(params[:player_1])
    # $player_2 = Player.new(params[:player_2])

    # session[:player_1] = params[:player_1]
    # session[:player_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    "Hellow uwu"
  end
end