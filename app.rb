require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/computer'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:player_name] = params[:player_name]
    redirect('/play')
  end

  get '/play' do
    @game = Game.new(session)
    @player_name = @game.player_name
    erb :play
  end

  post '/play' do
    session[:player_choice] = params[:player_choice]
    session[:computer_choice] = Computer.new.move
    redirect('/result')
  end

  get '/result' do
    @game = Game.new(session)
    @player_name = @game.player_name
    @player_choice = @game.player_choice
    @computer_choice = @game.computer_choice
    @outcome = @game.assign_outcome
    erb :result
  end  

  run! if app_file == $0
end