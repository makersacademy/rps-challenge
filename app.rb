require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/sheldon'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    @no_players = session[:no_players]
    erb :index
  end

  get '/oneplayer' do
    session[:no_players] = 1
    redirect '/'
  end

  get '/twoplayers' do
    session[:no_players] = 2
    redirect '/'
  end

  post '/names1' do
    session[:player_1] = Player.new(params[:name_1])
    session[:player_2] = Sheldon.new
    session[:game] = Game.new(session)
    redirect '/play'
  end

  post '/names2' do
    session[:player_1] = Player.new(params[:name_1])
    session[:player_2] = Player.new(params[:name_2])
    session[:game] = Game.new(session)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  post '/turn' do
    @game = session[:game]
    @action = params[:action].downcase.to_sym
    @game.turn.make_move(@action)
    @game.switch
    @game.player_2.make_move if @game.no_players==1
    redirect '/play'
  end

  get '/reset' do
    @game = session[:game]
    @game.reset
    redirect '/play'
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end
