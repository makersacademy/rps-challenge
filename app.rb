require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Rps < Sinatra::Base
  configure :devlopment do
    register Sinatra::Reloader
  end

  enable :sessions

    get '/' do
      erb :index
    end

    post '/name' do
      session[:name] = Player.new(params[:name])
      redirect '/play'
    end

    get '/play' do
      @player = session[:name]
      erb :play  
    end

    post '/paper' do
      @player = session[:name]
      @player.paper
      redirect '/play'
    end

    post '/scissors' do
      @player = session[:name]
      @player.scissors
      redirect '/play'
    end

    post '/rock' do
      @player = session[:name]
      @player.rock
      redirect '/play'
    end
    
  run! if @app_file == $0
end