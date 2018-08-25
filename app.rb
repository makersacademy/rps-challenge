require 'sinatra/base'
require_relative './lib/game.rb'
require_relative './lib/player.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/players' do
    case params[:action]
    when "single_player"
      @game = Game.create(1)
      @number_players = 1
    when "multiplayer"
      @game = Game.create(2)
      @number_players = 2
    end
    erb(:enter_name)
  end

  post '/multiplayer' do
    erb(:enter_two_names)
  end

  post '/name' do
    @game = Game.instance
    @game.add_name(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/move' do
    @game = Game.instance
    case params[:action]
    when 'rock' then @game.play('Rock')
    when 'paper' then @game.play('Paper')
    when 'scissors' then @game.play('Scissors')
    end
    redirect '/winner'
  end

  get '/winner' do
    @game = Game.instance
    erb(:winner)
  end

end
