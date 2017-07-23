require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'
require 'pry'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/player' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @player = @game.player
    erb :play
  end

  post '/choice' do
    @game  = Game.instance
    @player_choice = params[:player_choice]
    @game.player_choice(@player_choice)
    redirect '/choice'
  end

  get '/choice' do
    @game = Game.instance
    erb :choice
  end

  run! if app_file == $0

end
