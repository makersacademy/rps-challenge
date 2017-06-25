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

  post '/rock' do
    @game.player.select_move(:rock)
    @game.cpu.roll_attack
    @game.generate_result
    redirect('/play')
  end

  post '/paper' do
    @game.player.select_move(:paper)
    @game.cpu.roll_attack
    @game.generate_result
    redirect('/play')
  end

  post '/scissors' do
    @game.player.select_move(:scissors)
    @game.cpu.roll_attack
    @game.generate_result
    redirect('/play')
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
