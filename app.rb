require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'


class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
   player = Player.new(params[:player_name])
   Game.create(player)
   @player_name = player.name
    erb(:play)
  end

  post '/outcome' do
    @game = Game.instance
    @player_name = @game.player.name
    @player_choice = params[:player_choice]
    @pc_choice = @game.computer_choice
    @result = @game.result(@player_choice, @pc_choice)
    erb(:outcome)
  end

  
end