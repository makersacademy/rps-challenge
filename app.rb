require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/form' do
    session[:player] = Player.new(params[:username])
    session[:computer] = Computer.new
    session[:game] = Game.new((session[:player]),(session[:computer]))
    redirect('/play')
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  post '/decision' do
    @player = session[:player]
    @player.choice = (params[:rock]) unless (params[:rock]).nil?
    @player.choice = (params[:paper]) unless (params[:paper]).nil?
    @player.choice = (params[:scissors]) unless (params[:scissors]).nil?
    redirect('/player_decision')
  end

  get '/player_decision' do
    @player = session[:player]
    erb(:player_decision)
  end

  get '/outcome' do
    @game = session[:game]
    @game.computer.choose
    erb(:outcome)
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
