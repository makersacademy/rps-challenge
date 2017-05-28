require 'sinatra/base'
require './lib/game'

class RubyPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = session[:game]
  end

  get '/' do
    session.clear
    session[:game] = Game.new
    erb :index
  end

  post '/player_name' do
    @game.create_players(Player.new(params[:player_name]))
    redirect '/rounds'
  end

  get '/rounds' do
    @player_name = @game.players[0].name
    erb :rounds
  end

  post '/play' do
    rounds = params[:no_of_rounds].to_i
    @game.no_of_rounds = [*1..rounds]
    erb :play
  end

  post '/fight' do
    session[:weapon] = params[:weapon]
    redirect '/outcome'
  end

  get '/outcome' do
    @player_1_weapon = session[:weapon].to_s
    @player_2_weapon = Game::WEAPONS.sample.to_s
    @player_1_name = @game.players[0].name
    @player_2_name = @game.players[1].name
    erb :outcome
  end

  get 'play' do
    erb :play
  end

  run! if __FILE__ == $PROGRAM_NAME
end