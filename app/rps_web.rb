require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'


class RPSWeb < Sinatra::Base
  # use Rack::Session::Pool, :expire_after => 2592000
  # set :sesion_secret, "super secret"

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/move' do
    @player = $player
    @player.move_choice(params[:move])
    redirect '/result'
  end

  get '/result' do
    @game = Game.new
    @player = $player
    @move = @player.move
    @comp = Computer.new
    @comp_move = @comp.move
    erb @game.result(@move, @comp_move)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
