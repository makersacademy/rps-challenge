require 'sinatra/base'
require_relative "./lib/game.rb"

class RockPaperScissors < Sinatra::Base
  enable :sessions

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
    redirect to('/results')
  end

  get '/results' do
    @choice = session[:choice]
    @player_name = session[:name]
    $game = Game.new(@player_name, "computer")
    $game.player_1.choice = @choice
    $game.play
    @winner = $game.winner
    redirect to('/draw') if @winner == nil
    erb(:results)
  end
  get '/draw' do
    erb(:draw)
  end

  run! if app_file == $0
end
