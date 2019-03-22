require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/options' do
    session[:player] = Player.new(params[:name])
    session[:computer] = Player.new("Computer")
    redirect '/options'
  end

  get '/options' do
    @player = session[:player]
    erb :options
  end

  post '/play' do
    @player = session[:player]
    @player.update_choice(params[:choice])
    redirect '/outcome'
  end

  get '/outcome' do
    @player = session[:player]
    @computer = Player.new("Computer")
    @computer.update_choice
    erb :play
  end
end
