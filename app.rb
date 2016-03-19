require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/sign-in' do
    session[:user] = Player.new(params[:user])
    redirect '/play'
  end

  get '/play' do
    @user = session[:user].name
    erb :play
  end

  post '/rock' do
    @user = session[:user]
    @user.weapon('Rock')
    redirect '/outcome'
  end

  post '/paper' do
    @user = session[:user]
    @user.weapon('Paper')
    redirect '/outcome'
  end

  post '/scissors' do
    @user = session[:user]
    @user.weapon('Scissors')
    redirect '/outcome'
  end

  get '/outcome' do
    # @user = session[:user]
    erb :outcome
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
