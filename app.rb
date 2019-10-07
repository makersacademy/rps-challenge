require 'sinatra/base'
require './lib/rps.rb'
require './lib/player.rb'
require './lib/computer.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/details' do
    session[:user_name] = params[:user_name]
    redirect '/greeting'
  end

  get '/greeting' do
    @user_name = session[:user_name]
    erb :greeting
  end

  post '/choice' do
    session[:selection] = params[:selection]
    redirect '/result'
  end

  get '/result' do
    @user_name = session[:user_name]
    @selection = session[:selection]
    game = Rps.new(Player.new(@selection, @user_name), Computer.new)
    if game.decide == :win
      erb :win
    elsif game.decide == :lose
      erb :lose
    else
      erb :tie
    end
  end

  run! if app_file == $0
end
