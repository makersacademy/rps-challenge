require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:name]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/rock' do
    @game = $game
    @game_selection = @game.rock_paper_scissors
    result = @game.result(params[:rock], @game_selection)
    @result = result
    erb(:rock)
  end
  
  get '/paper' do
    @game = $game
    @game_selection = @game.rock_paper_scissors
    result = @game.result(params[:paper], @game_selection)
    @result = result
    erb(:paper)
  end

  get '/scissors' do
    @game = $game
    @game_selection = @game.rock_paper_scissors
    result = @game.result(params[:scissors], @game_selection)
    @result = result
    erb(:scissors)
  end

  run! if app_file == $0
end