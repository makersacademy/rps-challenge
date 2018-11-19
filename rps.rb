require 'sinatra/base'
require_relative "./lib/game.rb"

class RockPaperScissors < Sinatra::Base
  enable :sessions
  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    p params
    session[:name] = params[:name]
    redirect to('/play')
  end

  get '/play' do
    @player_name = session[:name]
    erb(:play)
  end

  post '/choice' do
    p params
    session[:choice] = params[:choice]
    @game = Game.new_game(session[:name], "computer")
    @game.player_1.choice = session[:choice] # I could probably refactor the sessions out by moving Game.new into /choice
    @game.play
    redirect to('/draw') if @game.winner == nil
    redirect to('/results')
  end

  get '/results' do
    erb(:results)
  end
  get '/draw' do
    erb(:draw)
  end

  run! if app_file == $0
end
