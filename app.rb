require 'sinatra/base'
require './lib/game'
# require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  # configure :development do
  #   register Sinatra::Reloader

  get '/' do#this goes to the homepage
    erb(:index)#form to sign in name
  end

  post '/names' do
    @game = Game.new("player_1","random_choice")
    @player_1_name = params[:player_1_name]#saving name
    erb(:choice)
  end
 
  post '/picks' do
    @game = Game.new("player_1","random_choice")
    @object1 = params[:object1]#saving name
    erb(:ready_up)
  end

  # post '/picks' do
  #   @object1 = params[:object1]#saving name
  #   erb(:ready_up)
  # end
  
  run! if app_file == $0
end