require 'sinatra'
require_relative './lib/game'
require_relative './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post '/name' do
   session[:name] = params[:name]
    redirect '/play'
  end

  get "/play" do
     @game = Game.new(session)
    erb :play
  end

  post '/play' do
    session[:move] = params[:move]
    session[:computer_move] = Computer.new.move
    redirect '/play'
   end

   run! if app_file ==$0
   
  end
