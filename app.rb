require 'sinatra/base'
require_relative './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @name = Game.instance.player.name
    erb :play
  end

  post '/rock' do
    Game.instance.player.choose(:Rock)
    Game.instance.opponent.choose
    redirect '/game_over'
  end

  post '/paper' do
    Game.instance.player.choose(:Paper)
    Game.instance.opponent.choose
    redirect '/game_over'
  end

  post '/scissors' do
    Game.instance.player.choose(:Scissors)
    Game.instance.opponent.choose
    redirect '/game_over'
  end

  get '/game_over' do
    @player_choice = Game.instance.player.choice.type
    @opponent_choice = Game.instance.opponent.choice.type
    @result = Game.instance.result
    @past_totals = Game.instance.past_totals
    erb @result
  end

  run! if app_file == $0
end
