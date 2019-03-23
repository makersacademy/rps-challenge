require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base;

  enable :sessions

  get '/' do
    erb :home
  end

  get '/play' do
    @game = Game.create(params[:player_1_name])
    @name = @game.player_1.name.upcase
    erb :play
  end

  post '/rock' do
    @game = Game.instance
    @game.player_1.play('rock')
    redirect '/result'
  end

  post '/paper' do
    @game = Game.instance
    @game.player_1.play('paper')
    redirect '/result'
  end

  post '/scissors' do
    @game = Game.instance
    @game.player_1.play('scissors')
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    @player_1_choice = @game.player_1.choice.upcase
    erb :result
  end

  run! if app_file == $0

end
