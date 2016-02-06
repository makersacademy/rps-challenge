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
    $game = Game.new(Player.new(params[:name]), Computer.new)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    $game.player.move_choice(params[:move])
    redirect '/result'
  end

  get '/result' do
    @move = $game.player.move
    @comp_move = $game.computer.move
    erb $game.result(@move, @comp_move)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
