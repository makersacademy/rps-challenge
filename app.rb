require 'sinatra/base'
require './lib/game'


class Rps < Sinatra::Base
  enable :sessions

  before do
   p @game = Game.instance
  end

  get '/' do
    erb(:index)
  end 

  post '/name' do 
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb(:name)
  end

  get '/rock' do
    @player_choice = "rock"
    @game_choice = @game.rand_choice
    erb(:rock)
  end

  get '/paper' do
    @player_choice = "paper"
    @game_choice = @game.rand_choice
    erb(:paper) 
  end 
  
end