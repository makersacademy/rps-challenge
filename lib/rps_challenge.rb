require 'sinatra/base'
require_relative 'computer_choice'

class Rps_Challenge < Sinatra::Base

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
    erb :lets_play
  end

  get '/game' do
    erb :game
  end

  post '/game' do
    session[:selection] = params[:selection]
    @choice = session[:selection]
    @computer_choice = @@game.computer_choose
    erb :result
  end

end