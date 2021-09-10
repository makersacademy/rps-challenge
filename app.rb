require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  # get '/' do
  #   erb :food_form
  # end  

  # post '/food' do
  #   "My name is #{params[:name]}, and I love #{params[:favorite_food]}."
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    p "-----#{session[:player_1_name]}------"
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end
  

  run! if app_file == $0
end

