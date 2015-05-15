require 'sinatra/base'
require_relative 'computer_choice'

class RPSChallenge < Sinatra::Base

  @@game = Game.new

  set :views, Proc.new { File.join(root, "views") }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/name' do
    erb :name_entry
  end

  post '/name' do
    session[:name] = params[:name]
    @name = session[:name]
    erb :lets_play
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  get '/result' do
    session[:selection] = params[:selection]
    @choice = session[:selection]
    @computer_choice = @@game.computer_choose
    @result = @@game.result(@choice, @computer_choice)
    @name = session[:name]
    erb :result
  end

end