require 'sinatra/base'
require './lib/player'


class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/options' do
    session[:name] = Player.new(params[:name])
    session[:computer] = Player.new("Computer")
    redirect '/options'
  end

  get '/options' do
    @player = session[:name]
    erb :options
  end

  post '/play' do
    session[:player_choice] = params[:choice]
    redirect '/outcome'
  end

  get '/outcome' do
    @player_choice = session[:player_choice]
    @computer_choice = Player.new("Computer").random_choice
    erb :play
  end
end
