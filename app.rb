  require 'sinatra/base'
  require './lib/computer'
  require './lib/result'

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
      session[:computer_choice] = Computer.new.choice 
      redirect '/game'
    end

    get '/game' do
      # @name = session[:name]
      # @choice = session[:choice]
      # @computer_choice = session[:computer_choice]
      @result = Result.new(session)
      erb :game
    end

    run! if app_file == $0
  end
  