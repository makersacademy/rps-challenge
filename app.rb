require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RpsChallenge < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  post '/play' do
    session[:name] = params[:name]
    @name = session[:name]
    erb(:play)
  end

  post '/result' do
    @player_choice = params[:player_choice]
    game = Game.new
    @computer_choice = game.random_choice
    @result = game.result(@player_choice, @computer_choice)
    erb(:result)
  end

  run! if app_file == $0
end
