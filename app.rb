require 'sinatra/base'
require 'sinatra/reloader'
require './game.rb'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = params[:player_name]
    session[:player_name] = @player_name
    erb(:name)
  end

  post '/result' do
    @player_name = session[:player_name]
    game = Game.new(@player_name)
    @choice = params[:choice]
    game.user_choice(params[:choice])
    erb(:result)
  end

  run! if app_file == $0
end