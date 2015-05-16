require 'sinatra/base'
require_relative 'computer_choice'

class RPSChallenge < Sinatra::Base

  @@game = Game.new

  set :views, Proc.new { File.join(root, "views") }
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    @name = session[:name]
    if @name == ""
      erb :index
    else
      erb :lets_play
    end
  end

  get '/playagain' do
    @name = session[:name]
    erb :lets_play
  end

  get '/game' do
    @name = session[:name]
    session[:game_type] = 1
    @type = session[:game_type]
    erb :game
  end

  get '/game2' do
    @name = session[:name]
    session[:game_type] = 2
    @type = session[:game_type]
    erb :game
  end

  get '/result' do
    @name = session[:name]
    @choice = params[:selection]
    @game_type = session[:game_type]
    @computer_choice = @@game.computer_choose(@game_type)
    @result = @@game.result(@choice, @computer_choice)
    erb :result
  end

end