require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.start_game(params[:player_one], params[:player_two] ||= "Computer")
    redirect '/play'
  end

  before do
    @game = Game.game
  end

  get '/play' do
    if @game.draw == true
      Game.start_game(params[:player_name] ||= @game.player_name)
      Game.start_game(params[:player_one] ||= @game.player1_name, params[:player_two] ||= @game.player2_name)
      erb(:play)
    else
      erb(:play)
    end
  end

  before do
    @game = Game.game
  end

  post '/choice' do
    @game.player_choice(params[:choice])
    redirect '/winner_page'
  end

  get '/winner_page' do
    @game.computer_choice *******
    @game.rps(@game.player1_weapon, @game.player2_weapon)
    @game.draw == false ? erb(:winner_page) : redirect('/draw')
  end

  get '/draw' do
    erb(:draw)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
