require 'sinatra'
require 'sinatra/base'
require_relative 'models/player.rb'

class RPSGame < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @player_1 = Player.new(@name)
    erb(:play)
  end

  post '/winner' do
    session[:move] = params[:move]
    redirect '/winner'
  end

  get '/winner' do
    @name = session[:name]
    erb(:winner)
  end

end
