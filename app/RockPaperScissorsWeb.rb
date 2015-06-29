require          'sinatra/base'
require_relative 'rps_helper'

class RockPaperScissorsWeb < Sinatra::Base # this could be HandGame, and the module defines what game it is? IE another hand game if another module
  include RPSSetterUpper
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/register' do
    erb :register
  end

  post '/register' do
    register
    redirect '/reset'
  end

  get '/reset' do
    reset
    redirect '/play'
  end

  get '/play' do
    erb :play_page
  end

  post '/play' do
    @result = new_game.choose params[:choice]
    update_status
    check_for_winner
    erb :play_page
  end
end
