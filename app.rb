require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/rps.rb'
require_relative './lib/player.rb'


class Rockpaperscissors < Sinatra::Base 
  configure :development do 
    register Sinatra::Reloader 
  end
  
  enable :sessions 
  
  get '/' do
    erb(:index)
  end

  get '/signin' do
    session[:name] = params[:name]
    erb(:signin)
    
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  post '/game' do
    @name = session[:name]
    @computer = ["Rock", "Paper", "Scissors"].sample
    erb(:game)
  end

  run! if app_file == $0
end