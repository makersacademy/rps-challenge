require 'sinatra/base'
require_relative './computer'
require_relative './game'
require_relative './player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    name = params[:player_name]
    name = "Player" if name == ""
    @game = Game.create(Player.new(name), Computer.new)
    redirect to('/play')
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    @player = @game.player
    erb(:play)
  end

  post '/choice' do
    @game.player.choose(params[:player_choice])
    redirect to('/result')
  end

  get '/result' do
    @player = @game.player
    @computer = @game.computer
    @computer.choose
    @result = @game.print_winner
    erb(:result)
  end

  run! if app_file == $0

end
