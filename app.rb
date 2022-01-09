require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do 
    erb(:index)
  end

  post '/name' do 
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do 
    @name = session[:name]
    erb(:play)
  end

  post '/rock' do
    session[:player_choice] = "ROCK"
    redirect '/results'
  end

  post '/paper' do
    session[:player_choice] = "PAPER"
    redirect '/results'
  end

  post '/scissors' do
    session[:player_choice] = "SCISSORS"
    redirect '/results'
  end

  get '/results' do
    @player_choice = session[:player_choice]
    erb(:results)
  end
end