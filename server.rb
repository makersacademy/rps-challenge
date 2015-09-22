require 'sinatra/base'
require 'sinatra'
require_relative './lib/game'
require_relative './lib/player'


class RPSChallenge < Sinatra::Base

  enable :sessions

  set :views, proc { File.join(root, 'views') }

  get '/' do
    erb :index
  end

  post '/new_game' do
    session[:name] = params[:player_name]
    redirect '/' if !session[:name] || session[:name] == ''
    redirect '/new_game'
  end

  get '/new_game' do
    @name = session[:name]
    erb :new_game
  end

  get '/game' do
    player = Player.new(session[:name])
    player.choose_move(params[:move])
    @player_move = player.move
    game = Game.new
    @computer_move = game.generate_move
    @outcome = game.outcome(@player_move, @computer_move)
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
