require 'sinatra/base'
require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './lib/Game'
require './lib/Player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:game] = Game.new
    session[:player] = params[:player]
    redirect '/play'
  end


  post '/play' do
    p "POST PLAY"
    @game = session[:game]
    p @game
    p session[:game]
    # session[:object] = params[:object].to_sym
    @game.choice(params[:object])
    session[:computer_object] = @game.random_selection
    session[:game] = @game
    redirect '/play'
  end

  get '/play' do
    p "GET PLAY"
    @game = session[:game]
    @player = session[:player]
    # @computer_object = session[:computer_object]
    session[:game] = @game
    erb(:play)
  end

   get '/game' do
    @game = session[:game]
    erb(:game)
   end

   run! if app_file == $0
end
