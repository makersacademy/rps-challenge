require 'sinatra/base'
require './lib/player'
require './lib/machine'

class Rock_paper_scissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player_1 = Player.new(params[:player_1_name])
    @player_1_name = $player_1.name
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    erb :play
  end

  post '/game_on' do
    @player_1_name = $player_1.name
    $selected_object = params[:rps]
    @human_object = $selected_object
    $machine = Machine.new
    @machine = $machine
    @machine_object = @machine.choose_object
    erb :game_on
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
