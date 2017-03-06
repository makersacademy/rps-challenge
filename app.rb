require 'sinatra/base'
require_relative './lib/computer'

class App < Sinatra::Base
  enable :sessions
  set :session_secret, 'secret'

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/choice'
  end

  get '/choice' do
    @player = session[:player]
    erb :choice
  end

  post '/select' do
    session[:choice] = params[:choice]
    redirect '/play'
  end

  get '/play' do
    @choice = session[:choice]
    @computer_choice = Computer.new.draw
    erb :play
  end

  run! if app_file == $0
end
