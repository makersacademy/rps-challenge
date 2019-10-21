require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/single_player' do
    erb(:single_player)
  end

  post '/p1_choice_comp' do
    p params[:choice]
    # @game.player1.choice(params[:choice])
    redirect '/battle'
  end

  post '/battle_comp' do
    player = Player.new(params[:name1])
    comp = Computer.new(params[:name2])
    @game = Game.create(player, comp)
    # p @game
    redirect '/battle'
  end

  get '/two_player' do
    erb(:two_player)
  end

  post "/battle" do
    player1 = Player.new(params[:name1])
    player2 = Player.new(params[:name2])
    @game = Game.create(player1, player2)
    redirect '/battle'
  end

  post '/p1_choice' do
    p @game.current_turn
    @game.switch_turns
    p 'i got here'
    redirect '/battle'
  end

  post '/p2_choice' do
    @game.switch_turns
    redirect '/battle'
  end

  get '/battle' do
    erb(:battle)
  end
end
