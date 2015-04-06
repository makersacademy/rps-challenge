require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RpsChallenge < Sinatra::Base
  set :public, Proc.new { File.join(root,"..", "public")}
  set :views, Proc.new { File.join(root,"..", "views")}
  enable :sessions

  get '/' do
    erb :index
  end

  get '/start' do
    erb :name_page
  end

  get '/new_game' do
    @num = params[:number]
    erb :enter_names
  end

  get '/choose_hands' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb :hands_choices
  end

  get '/results' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
