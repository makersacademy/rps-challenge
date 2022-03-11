require 'sinatra/base'
require 'sinatra/reloader'
require_relative "./lib/game"

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    erb :play
  end

  post '/outcome' do
    @input = params[:input]
    @player = session[:player_name]
    $game = Game.new(@input, @player)
    redirect '/outcome'
  end

  get '/outcome' do
    @game = $game
    erb :outcome
  end

end
