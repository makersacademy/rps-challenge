require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/players' do
    case params[:action]
    when 'ONE PLAYER' then @game = Game.create(1)
    when 'TWO PLAYER' then @game = Game.create(2)
    end
    erb(:enter_names)
  end

  post '/names' do 
    @game = Game.instance
    case @game.number_of_players 
    when 1 then @game.save_name(params[:player_one])
    when 2 then @game.save_name(params[:player_one], params[:player_two])
    end
    # redirect '/game_format'
    redirect '/play'
  end

  get '/game_format' do
    erb(:game_format)
  end

  get '/play' do
    @game = Game.instance 
    erb(:game_format)
  end



end
