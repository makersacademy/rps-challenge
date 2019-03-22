require 'sinatra/base'
require './lib/player'


class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/options' do
    session[:name] = Player.new(params[:name])
    redirect '/options'
  end

  get '/options' do
    @player = session[:name]
    erb :options
  end

  post '/play' do
    @player_choice = params[:choice]
    erb :play
  end
end
