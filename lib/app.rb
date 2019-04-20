require 'sinatra/base'
require_relative 'user'
require_relative 'game'
require_relative 'result'

class RockPapersScissors < Sinatra::Base

  enable :sessions

  before do
    @game = Game.get
  end

  get '/' do
    erb :home
  end

  get '/registrations/signup' do
    erb :signup
  end

  post '/register' do
    User.set(params[:email], params[:password])
    redirect '/play'
  end

  get '/sessions/login' do
    erb :login
  end

  post '/sessions' do
    @user = User.find_by(email: params["email"], password: params["password"])
    session[:user_id] = @user.get
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    session[:choices] = User.set_choice(params[:choice])
    @game = Game.set(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @result = Result.run(@game.user, @game.computer)
    erb :result
  end

  run! if app_file == $0
end
