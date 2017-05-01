require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/computer'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    player = Player.new(params[:player])
    @@game = Game.new(player)
    redirect('/play')
  end

  get '/play' do
    @game = @@game
    @@computer = Computer.new
    erb :play
  end

  get '/rock' do
    @player_choice = :rock
    @game = @@game
    @comp = @@computer
    erb :rock
  end

  get '/paper' do
    @player_choice = :paper
    @game = @@game
    @comp = @@computer
    erb :paper
  end

  get '/scissors' do
    @player_choice = :scissors
    @game = @@game
    @comp = @@computer
    erb :scissors
  end

  run! if app_file == $0

end
