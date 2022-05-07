require 'sinatra/base'
require 'sinatra/reloader'
# couldn't get relative path to work for this. need to find cause
require '/Users/jimmylyons/Documents/Programming/Makers/Projects/week3/rps-challenge/lib/game.rb'

class Online_Game < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_name = params[:name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    $player_choice = params[:choice]
    redirect '/result'
  end

  get '/result' do
    game = Game.new('$player_choice')
    @result = game.return_winner
    $computer_choice
    erb :result
  end

  run! if app_file == $0
end
