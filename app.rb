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
    redirect '/play'
  end

  post '/names2' do
    session[:player_1] = Player.new(params[:name_1])
    session[:player_2] = Player.new(params[:name_2])
    redirect '/play'
  end

  get '/play' do
    session[:game] = @game = Game.new(session)
    erb(:play)
  end

  get '/play2' do
    @game = session[:game]
    erb(:play2)
  end

  post '/run' do
    @game = session[:game]
    @action1 = params[:action1].downcase.to_sym
    @game.player_1.set_move(@action1)
    @game.player_2.set_move
    redirect '/play'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
