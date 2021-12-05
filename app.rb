require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/play' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/results' do
    @player_choice = params[:choice]
    @player_choice.to_s.downcase
    game = Game.new
    @computer_choice = game.computer_random_choice
    @results = game.the_winner(@player_choice, @computer_choice)
    erb :results
  end




  run! if app_file == $0
end