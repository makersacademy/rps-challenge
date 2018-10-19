require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RPSWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    redirect('/player_wins') if @game.player_wins?
    redirect('/player_looses') if @game.player_looses?
  end

  get '/player_wins' do
    erb :player_wins
  end

  get '/player_looses' do
    erb :player_looses
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
