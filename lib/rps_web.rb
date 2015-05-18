require 'sinatra/base'
require_relative 'game_engine'

class RPSWeb < Sinatra::Base
  set :public_dir, Proc.new{File.join( root, '..', "public") }
  enable :sessions

  @@game = GameEngine.new

  get '/' do

    erb :index
  end

  post '/game1' do
    session[:name] = params[:name]
      @name = params[:name]
    erb :game1
  end


  post '/game_choice' do
      puts 'is this thing working?'
      puts params
      @name = session[:name]
      session[:player_choice] = params['choice']
    erb :game_choice
  end


  post '/results' do
      puts 'is this thing really working?'
      puts params
      @name = session[:name]
      @player_choice = session[:player_choice]
      @mac_choice = :cpu
      @outcome = @@game.result(@player_choice)
    erb :results
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
