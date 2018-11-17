require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/weapon.rb'
require_relative './lib/computer_player'

class RockPaperScissors < Sinatra::Base

  before do
    @player = Player.instance
  end

  get '/' do
    erb :index
  end

  post '/form' do
    @player = Player.create(params[:name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapon' do
    @player.add_weapon(Weapon.create(params[:weapon]))
    redirect '/result'
  end

  get '/result' do
    p @player.weapon.type
    @computer_player = ComputerPlayer.new
    erb :result
  end

end
