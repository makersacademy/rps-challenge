require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  def load_state
    @game = $game
    @current_player = @game.current_player
  end

  def redirects
    redirect '/computer' if @game.current_player_computer?
    redirect '/results' if @game.finished?
  end
   
  get '/' do
    erb(:index)
  end

  post '/one_player' do
    erb :one_player
  end

  post '/two_player' do
    erb :two_player
  end

  post '/names1' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new("Computer")
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  post '/names2' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/rock' do
    load_state
    @game.log_move(@current_player, :rock)
    redirect'/rock'
  end

  get '/rock' do
    @game = $game
    @game.switch
    redirects
    erb(:play)
  end

  post '/paper' do
    load_state
    @game.log_move(@current_player, :paper)
    redirect'/paper'
  end

  get '/paper' do
    @game = $game
    @game.switch
    redirects
    erb(:play)
  end

  post '/scissors' do
    load_state
    @game.log_move(@current_player, :scissors)
    redirect'/scissors'
  end

  get '/scissors' do
    @game = $game
    @game.switch
    redirects
    erb(:play)
  end

  post '/spock' do
    load_state
    @game.log_move(@current_player, :spock)
    redirect'/spock'
  end

  get '/spock' do
    @game = $game
    @game.switch
    redirects
    erb(:play)
  end

  post '/lizard' do
    load_state
    @game.log_move(@current_player, :lizard)
    redirect'/lizard'
  end

  get '/lizard' do
    @game = $game
    @game.switch
    redirects
    erb(:play)
  end

  get '/computer' do
    @game = $game
    @game.log_move(@current_player, :comp)
    @game.switch
    erb(:results)
  end

  get '/results' do
    @game = $game
    redirect '/draw' if @game.draw?
    erb(:results)
  end

  get '/draw' do
    @game = $game
    erb(:draw)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
