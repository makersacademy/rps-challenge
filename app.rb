require "sinatra/base"
require "sinatra/reloader" 

class RockPaperScissors < Sinatra::Base

  enable :sessions 

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end 

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/rock' do
    @player_name = session[:player_name]
    erb :rock
  end

  get '/paper' do
    @player_name = session[:player_name]
    erb :paper
  end

  get '/scissors' do
    @player_name = session[:player_name]
    erb :scissors
  end

  run! if app_file == $0
end
