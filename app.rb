  require 'sinatra/base'

  class RPS < Sinatra::Base
    enable :sessions

    get '/' do
      erb :index
    end

    post '/name' do
      session[:name] = params[:name]
      redirect '/play'
    end 

    get '/play' do
      @name = session[:name]
      @choice = session[:choice]
      erb :play
    end

    post '/play' do
      session[:choice] = params[:choice]
      @computer_choice = session[:computer_choice]
      #session[:computer_choice] = params[:computer_choice]
      redirect '/game'
    end

    get '/game' do
      @choice = session[:choice]
      @computer_choice = :rock
      #session[:computer_choice]
      #session[:choice] = params[:choice]
      erb :game
    end

  
    run! if app_file == $0
  end