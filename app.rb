require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game_engine'


class RPSO < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index, locals: { :player_1_name => session[:player_1_name] }
  end

  post '/api/attack' do
    session[:move] = params[:move]
    redirect '/move'
  end

  post '/api/submit_names' do
    @player_1_name = Player.create(params[:player_1_name])
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/move' do

    puts @player_1_name
    @player_move = session[:move]
    @computer_move = Computer.new.guess
    @outcome = GameEngine.new(guess1: @player_move, computer: @computer_move)
    erb :move, :locals => { :player => Player.instance.name,
                            :player_move => @player_move,
                            :computer_move => @computer_move,
                            :outcome => @outcome.winner_is
                          }
  end

  get '/play' do
    erb :play, :locals => {:player => Player.instance.name}
  end

  run! if app_file == $0
end
