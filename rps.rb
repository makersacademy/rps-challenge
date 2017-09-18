require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/weapon'

class RPS < Sinatra::Base
  set :sessions, true
  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:game] = Game.new
    session[:player1] = Player.new(params[:player1_name])
    redirect('/weapon')
  end

  get '/weapon' do
    @possible_weapons = session[:game].rules.keys
    @player1 = session[:player1].name
    erb(:weapon)
  end

  post '/chosen_weapon' do
    session[:player1].weapon = params[:weapon]
    player2 = Player.new('computer')
    player2.random(session[:game].rules.keys)
    session[:game].add_player(session[:player1], player2)
    redirect('/result')
  end

  get '/result' do
    @player1 = session[:game].players.first
    weapon = Weapon.new(@player1.weapon)
    @player2 =  session[:game].players.last
    @result = session[:game].result(weapon)
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
