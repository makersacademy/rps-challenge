require 'sinatra/base'
require './lib/player'
require './lib/game_logic'

class RPS < Sinatra::Base
  set :public_folder, proc { File.join('..', 'public') }

  get '/' do
    erb :index
  end

  post '/' do
    @player_name = params[:name]
    erb :index
  end

  get '/play' do
    erb :play
  end

  post '/play' do
    player = Player.new params[:choice]
    cpu = Player.new(['Rock', 'Paper', 'Scissors'].sample)

    @player_choice = params[:choice]
    @cpu_choice = cpu.choice

    @result = GameLogic.new.result cpu, player
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
