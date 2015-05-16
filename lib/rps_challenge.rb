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
    @type = 1
    erb :game
  end

  get '/game2' do
    @name = session[:name]
    session[:game_type] = 2
    @type = 2
    erb :game
  end

  get '/result' do
    session[:selection] = params[:selection]
    @choice = session[:selection]
    @game_type = session[:game_type]
    @computer_choice = @@game.computer_choose(@game_type)
    @result = @@game.result(@choice, @computer_choice)
    @name = session[:name]
    erb :result
  end

end