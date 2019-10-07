require 'sinatra/base'
require 'shotgun'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/one' do
    erb(:menu1)
  end

  post '/name' do
    @game = Game.create(Player.new(params[:name_box]), Computer.new)
    redirect '/play_screen'
  end

  get '/two' do
    erb(:menu2)
  end

  post '/2play_names' do
    @game = Game.create(Player.new(params[:player_one]), Player.new(params[:player_two]))
    puts params
    redirect '/play_screen2'
  end

  get '/play_screen' do
    @player1 = session[:name]
    erb(:play_screen)
  end

  get '/play_screen2' do
    @player1 = session[:player_one]
    @player2 = session[:player_two]
    erb(:play_screen2)
  end

  post '/attack' do
    @game.player1.assign_move(params[:weapon])
    @game.player2.assign_move(params[:weapon2])
    redirect '/result'
  end

  get '/result' do
    @something = @game.round_winner?
    erb(:attack)
  end

  post '/turn_over' do
    erb(:play_screen)
  end
end
