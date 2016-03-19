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

  get '/play' do
    @game = Game.game
    erb(:play)
  end

  post '/choice' do
    @game = Game.game
    @game.player_choice(params[:choice])
    redirect '/winner_page'
  end

  get '/winner_page' do
    @game = Game.game
    @game.computer_choice
    @game.rps(@game.choice, @game.comp_choice)
    erb(:winner_page)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
