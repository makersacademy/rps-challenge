require 'sinatra'
require './lib/game'
require './spec/my_helper'

class RPSWeb < Sinatra::Application
  enable :sessions
  set :public_folder, 'public'

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/two_player' do
    erb(:two_player)
  end

  post '/play' do
    session[:name1], session[:choice1] = params[:name1], params[:choice1]
    session[:name2], session[:choice2] = params[:name2], params[:choice2]
    set_up_the_game
    erb(choose_page)
  end

end
