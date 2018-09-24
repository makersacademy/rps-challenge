require 'sinatra/base'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('/game')
  end

  get '/game' do
    @name = session[:name]
    @game = Game.create(@name)
    erb(:game)
  end

  post '/player_choice' do
    session[:player_choice] = params[:player_choice]
    redirect('/results')
  end

  get '/results' do
    @player1_choice = session[:player_choice]
    @game = Game.instance
    @player2_choice = @game.results.player2
    @message = @game.results.message(@player1_choice)
    erb(:results)
  end

  run! if app_file == $0

end
