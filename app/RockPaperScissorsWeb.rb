require          'sinatra/base'
require_relative 'rps_helper'

class RockPaperScissorsWeb < Sinatra::Base # this could be HandGame, and the module defines what game it is? IE another hand game if another module
  include RPSSetterUpper
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:name] = params[:name_box]
    erb :play_page
  end

  post '/result-page' do
    @result = new_game.choose params[:choice]
    erb :result
  end
end
