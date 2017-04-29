require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/computer'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
    computer = Computer.new(params[:computer])
    $game = Game.new(player, computer)
    redirect('/play')
  end

  get '/play' do
    @game = $game
    $computer = Computer.new
    erb :play
  end

  get '/rock' do
    @game = $game
    @comp = $computer
    erb :rock
  end

  get '/paper' do
    @game = $game
    @comp = $computer
    erb :paper
  end

  get '/scissors' do
    @game = $game
    @comp = $computer
    erb :scissors
  end

  run! if app_file == $0

end
