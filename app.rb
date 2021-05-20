require 'sinatra'
require 'sinatra/reloader'
require_relative './lib/game'


class Rps < Sinatra::Application
  before { @game = Game.load_game }
  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.save_game(Player.new(params[:player]), Player.new('Computer'))
    redirect('/welcome')
  end

  get '/welcome' do
    @player_name = @game.players[0].name
    erb(:welcome)
  end

  post '/choice' do
    @game.players[0].choose_weapon(params[:choice])
    @game.players[1].choose_weapon
    redirect('/results')
  end

  get '/results' do
    @player_1_weapon = @game.players[0].weapon
    @player_2_weapon = @game.players[1].weapon
    @winner_message = @game.winner
    erb(:results)
  end
  
  run! if app_file == $PROGRAM_NAME
end  
