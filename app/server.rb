require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/computer'
require 'sinatra/base'

class RockServer < Sinatra::Base

  games = Array.new
  computer = Computer.new

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    @browser_id = session[:session_id]
    @game = games.find {|game| !game.full?}
    @player = Player.new(params[:name],@browser_id)
    @game.add_player(@player)
    @opponent = @game.opponent_of(@browser_id)
    session.store(:game_id, @game.uuid)

    erb :play
  end

  get '/newgame' do
    if games.all? &:full?
      games << Game.new
    end
    erb :newgame
  end

  get '/play' do

    @browser_id = session[:session_id]
    @game = games.find { |game| game.uuid == session[:game_id] }
    @game.add_player(computer) if params[:computer] == "yes"

    @player = @game.player_of(@browser_id)
    @opponent = @game.opponent_of(@browser_id)
    if params[:weapon]
      weapon = params[:weapon].upcase.to_sym
      @player.choose(weapon)
    end
    erb :play
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
