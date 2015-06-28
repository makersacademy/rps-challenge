require 'sinatra/base'
require './app/game_handler' # does this solve anything?
require './app/rock'
require './app/paper'
require './app/scissors'

class RockPaperScissorsWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  post '/play' do
    erb :play_page
  end

  post '/result-page' do
    rock = Rock.new
    paper = Paper.new
    scissors = Scissors.new
    game = HandGameHandler.new rock, paper, scissors
    choices = {rock: rock, paper: paper, scissors: scissors}
    @result = game.choose choices[params[:choice].to_sym]
    erb :result
  end
end
