require 'sinatra/base'
require './lib/game'

class Rps_challenge < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    'Hello rps-challenge!'
    erb :home
  end

  get '/SignIn' do
    @name = params[:name]
    erb :signin
  end

  post '/SignIn' do
    @name = params[:name]
    redirect '/SignIn' if @player[:name] == ""
    erb :play_game
  end

  post '/PlayGame' do
    @player_selection = params[:selection]
    new_game = Game.new @player_selection
    @opponents_selection = new_game.opponents_selection
    erb :play_game
  end

  get '/Result' do
    @player_selection
    @opponents_selection
    erb :result
  end

  post '/Result' do
    erb :result
    @result = new_game.result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
