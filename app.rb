require 'sinatra/base'
require 'sinatra/reloader'
require './lib/computer'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end
  
  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/choice' do
    session[:choice] = params[:choice] 
    redirect '/selectedchoice'
  end

  get '/selectedchoice' do
    @name = session[:name]
    @choice = session[:choice]
    @computer_choice = Computer.new.choice
    @outcome = Game.new.outcome(@choice, @computer_choice)
    erb :selectedchoice
  end
  run! if app_file == $0
end
