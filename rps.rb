require 'sinatra'
require_relative './lib/player'
require_relative './lib/computer'
require_relative './lib/game'
require 'sinatra/base'

class RPS < Sinatra::Base
  # enable :sessions

  get '/' do
    erb :home
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    single_player ? $player2 = bot : $player2 = Player.new(params[:player2])
    redirect '/players'
  end

  get '/players' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :players
  end

  get '/rock' do
    'You chose rock!'
  end

  run! if app_file == $0
  private

  def single_player
    params[:player2] == 'Computer'
  end

  def bot
    Computer.new('Computer')
  end

end
