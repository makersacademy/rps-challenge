require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game.rb'
require_relative './lib/player.rb'

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
    player = Player.new(@name)
    player.random_choice
    session[:choice] = params[:choice]
    session[:opponent_choice] = player.opponent_choice
    p player.opponent_choice
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
