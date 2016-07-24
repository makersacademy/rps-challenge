require 'sinatra/base'
require './lib/the_game'
require './lib/the_internet'
require './lib/greeter.rb'

class RPSGame < Sinatra::Base

  enable :sessions

  before do
    @game = TheGame.instance
  end

  get '/' do
    erb :index
  end

  post '/setup' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @greeter = Greeter.new
    @name = session[:name]
    erb :play
  end

  post '/game' do
    player_choice = params[:player_choice]
    internet_choice = TheInternet.new.internet_choice
    @game = TheGame.create(session[:name], player_choice, internet_choice)
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0

end
