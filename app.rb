require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.instance
  end
  
  get '/' do
    erb(:index)
  end

  get '/one_player' do
    erb(:one_player)
  end

  post '/one_player_setup' do
    p_1 = Player.new(params[:p_1])
    p_2 = Player.new()
    @game = Game.create(p_1, p_2)
    redirect '/one_player_choice'
  end

  get '/one_player_choice' do
    erb(:one_player_choice)
  end

  post '/one_player_turn' do
    @game.p_1.choice(params[:choice])
    @game.p_2.choice()
    redirect '/result'
  end
  
  get '/two_player' do
    erb(:two_player)
  end
  
  post '/two_player_setup' do
    p_1 = Player.new(params[:p_1])
    p_2 = Player.new(params[:p_2])
    @game = Game.create(p_1, p_2)
    redirect '/two_player_first_choice'
  end
  
  get '/two_player_first_choice' do
    erb(:two_player_first_choice)
  end

  post '/two_player_first_turn' do
    @game.p_1.choice(params[:choice])
    redirect '/two_player_second_choice'
  end

  get '/two_player_second_choice' do
    erb(:two_player_second_choice)
  end

  post '/two_player_second_turn' do
    @game.p_2.choice(params[:choice])
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end
end
