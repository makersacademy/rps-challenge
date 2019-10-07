require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
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
    @player_choice = @game.player_picks_rock    
    @game_choice = @game.generate_computer_choice
    erb(:rock)
  end

  get '/paper' do
    @player_choice = @game.player_picks_paper
    @game_choice = @game.generate_computer_choice
    erb(:paper) 
  end 

  get '/scissors' do 
    @player_choice = @game.player_picks_scissors
    @game_choice = @game.generate_computer_choice
    erb(:scissors)
  end

end
