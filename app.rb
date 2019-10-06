# app.rb
require 'sinatra/base'
require './lib/computer'
require './lib/winner'
# require_relative './lib/game'

class RPS < Sinatra::Base
  # ... app code here ...

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    winner = Winner.new
    winner.player_1.name = params[:Name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:Name]
    erb(:play)
  end

  post '/fight' do
    @player = winner.player_1.name
    @player_choice = winner.player_1.choice
    @computer_choice = winner.player_2.choice
    @winner = winner.winner
    erb(:fight)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
