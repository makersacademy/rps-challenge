require 'sinatra/base'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/sign-in' do
    session[:user] = Player.new(params[:user])
    session[:computer] = Computer.new
    redirect '/play'
  end

  get '/play' do
    @user = session[:user].name
    erb :play
  end

  post '/rock' do
    @user = session[:user]
    @weapon = session[:user].choice('Rock')
    redirect '/outcome'
  end

  post '/paper' do
    @user = session[:user]
    @weapon = session[:user].choice('Paper')
    redirect '/outcome'
  end

  post '/scissors' do
    @user = session[:user]
    @weapon = session[:user].choice('Scissors')
    redirect '/outcome'
  end

  get '/outcome' do
    @user_weapon = session[:user].weapon
    @computer_weapon = session[:computer].choice
    erb :outcome
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
