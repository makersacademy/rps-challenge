require 'sinatra'
require_relative "./lib/player"
require_relative "./lib/cpu"
require_relative "./lib/game"

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_1_name]), Cpu.new)
    redirect('/play')
  end

  before do
    @game = Game.instance
  end

  post '/attack' do
    move = params[:move].to_sym
    @game.player.select_move(move)
    @game.cpu.roll_attack
    @game.generate_result
    redirect('/play')
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
