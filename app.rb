require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    @players = session[:players]
    erb :index
  end

  get '/oneplayer' do
    session[:players] = 1
    redirect '/'
  end

  # get '/twoplayers' do
  #   session[:players] = 2
  #   redirect '/'
  # end

  post '/names1' do
    session[:player_1] = Player.new(params[:name_1])
    session[:player_2] = Sheldon.new
    redirect '/play'
  end

  # post '/names2' do
  #   @player_1 = Player.new(params[:player_1])
  #   @player_2 = Player.new(params[:player_2])
  #   $game = Game.new(@player_1, @player_2)
  #   redirect '/play'
  # end

  get '/play' do
    @game = Game.new(session)
    erb(:play)
  end

  post '/play' do
    redirect '/play'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
