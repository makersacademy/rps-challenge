require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    # $p1 = Player.new(params[:player_one])
    # $p2 = Player.new(params[:player_two])
    p params
    session[:p1_name] = params[:player_one]
    session[:p2_name] = params[:player_two]
    # $game = Game.new($p1, $p2)
    redirect '/game_start'
  end

  get '/game_start' do
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    erb(:game_start)
  end

  get '/game_home' do
    # name1 = @p1_name
    # name2 = @p2_name
    # @p1 = Player.new(name1)
    # @p2 = Player.new(name2)
    p1 = Player.new(@p1_name)
    p2 = Player.new(@p2_name)
    @game = Game.new(@p1, @p2)
    erb(:game_home)
  end

  get '/enter_dragon' do
    visualise player choice 
    generate selection on behalf of machine
    show machine selection
    show who won
    add point to winner score tally
  end 


end
