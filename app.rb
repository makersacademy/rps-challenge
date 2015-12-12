require 'sinatra/base'
require './lib/game.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/set_name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    p params
    erb(:play)
  end

  post '/set_choice' do
    $game = Game.new(params[:player_choice])
    p params
    redirect '/invalid' if $game.invalid_choice?
    redirect '/match' if $game.match?
    redirect '/win' if $game.win?
    redirect '/lose'unless $game.win?
  end

  get '/invalid' do
    @game = $game
    erb(:invalid)
  end

  get '/win' do
    @game = $game
    erb(:win)
  end

  get '/lose' do
    @game = $game
    erb(:lose)
  end

  get '/match' do
    @game = $game
    erb(:match)
  end


















  # start the server if ruby file executed directly
  run! if app_file == $0
end
