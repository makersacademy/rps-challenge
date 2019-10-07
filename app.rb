require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game'
class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/play' do
    player_one = Player.new(params[:player_name])
    player_two = ComputerPlayer.new
    Game.create(player_one, player_two)
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/throw' do
    @game.play(params[:move])
    redirect '/throw'
  end

  get '/throw' do
    erb(:throw)
  end

  run! if app_file == $0

end