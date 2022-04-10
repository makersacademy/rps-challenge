# Sinatra application - Controller

require 'sinatra/base'
require 'sinatra/reloader'

require_relative './lib/player'
require_relative './lib/computerplayer'
require_relative './lib/round'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/play' do
    $player = Player.new(params["name"])
    $computer = ComputerPlayer.new
    erb(:play)
  end

  get '/select' do
    $round = Round.new
    erb(:select)
  end

  post '/round_outcome' do
    $player_selection = params[:selection]
    $round.selection($player, params[:selection])
    $round.selection($computer, $computer.selection)
    if $round.determine_round_winner == $player
      $player_outcome = "You win!"
    elsif $round.determine_round_winner == $computer
      $player_outcome = "You lose!"
    else
      $player_outcome = "It's a draw."
    end
    erb(:round_outcome)
  end

  run! if app_file == $0

end
