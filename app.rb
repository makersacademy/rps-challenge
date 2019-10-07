require 'sinatra'
require 'sinatra/base'
require './lib/game'
	
class RPS < Sinatra::Base
	enable :sessions
	  get '/' do
	    erb :index
    end
    
    post '/name' do
      session[:name_message] = params[:player]
      redirect '/play'
    end

    get '/play' do
      @name = session[:name_message]
	    erb :play
    end
    
    post '/move' do
      game = Game.new(params[:movee])
      session[:win_message] = game.score
      session[:option] = game.give_random_image
      session[:user] = game.give_my_image
      redirect '/score'
    end

    get '/score' do
      @message = session[:win_message]
      @option = session[:option]
      @choice = session[:user]
      erb :score
    end

	  # start the server if ruby file executed directly
	  run! if app_file == $0
end