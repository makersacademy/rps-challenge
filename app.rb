require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  attr_reader :name, :choice, :opponent_choice

  enable :sessions

  get '/' do
    erb :index
  end
  
  post '/name' do
    session[:name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post "/play" do
    session[:choice] = params[:choice]
    session[:opponent_choice] = :Rock
    redirect '/choice'
  end

  get '/choice' do
    @choice = session[:choice]
    @opponent_choice = session[:opponent_choice]
    erb :choice
  end 

  # start the server if ruby file executed directly
  run! if app_file == $0
end
