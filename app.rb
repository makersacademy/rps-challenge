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
      session[:choice] = params[:choice].downcase.to_sym
      session[:computer_choice] = Computer.new.choice 
      redirect '/game'
    end

    get '/game' do
      @result = Result.new(session)
      erb :game
    end

    post '/game' do
      @choice = session[:choice]
      @computer_choice = session[:computer_choice]
      redirect '/game'
    end

    run! if app_file == $0
  end
  