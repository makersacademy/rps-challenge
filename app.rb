require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/rockpaperscissors.rb'

class Game < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post "/game-mode" do
    if params[:choice] == "single_player"
      erb(:single_name)
    else
      erb(:multiple_names)
    end
  end

  post "/give-one-name" do
    player1 = Player.new(params[:name])
    player2 = Player.new("Computer", true)
    RockPaperScissors.new_game(player1, player2)
    redirect('/play')
  end

  get '/play' do
    @game = RockPaperScissors.instance
    erb(:play)
  end
end