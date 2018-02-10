require 'sinatra/base'
require './lib/computer'
require './lib/game'
require './lib/scoreboard'

class Rps < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/player' do
    @game = Game.create
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/battle'
  end

  get '/battle' do
    @computer = Computer.new
    @scoreboard = Scoreboard.new
    @player = session[:player]
    @choice = session[:choice]
    @outcome = @game.choose_winner(@choice, @computer.rand_choice)
    @scoreboard.update_score(@outcome)
    erb :battle
  end

  run! if app_file == $0
end
