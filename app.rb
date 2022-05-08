require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  enable :sessions

  post '/names' do
    $game = Game.new(Player.new(params[:player]))
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    @message = session[:message]
    erb :play
  end

  post '/rock' do
    @game = $game
    @game.rock
    session[:message] = @game.message
    redirect '/play'
  end 

  post '/paper' do
    @game = $game
    @game.paper
    session[:message] = @game.message
    redirect '/play'
  end 

  post '/scissors' do
    @game = $game
    @game.scissors
    session[:message] = @game.message
    redirect '/play'
  end
  
  run! if app_file == $0
  
end
