require 'sinatra/base'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    @choice = session[:choice]
    game = Game.new(@choice)
    @won = game.won?
    @thrown = game.thrown
    erb :game
  end

  post '/game' do
    session[:choice] = params[:choice]
    redirect '/game'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


#<%= stylesheet_link_tag "main" %>
