require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.start_game(params[:player_name])
    redirect '/play'
  end

  before do
    @game = Game.game
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game.player_choice(params[:choice])
    redirect '/winner_page'
  end

  get '/winner_page' do
    @game.computer_choice
    @game.rps(@game.choice, @game.comp_choice)
    @game.draw == true ? redirect('/draw') : erb(:winner_page)
  end

  get '/draw' do
    erb(:draw)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
