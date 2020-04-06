require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb(:name_registration)
  end

  post '/names' do
    Game.create([params['player1_name'], params['player2_name']])
    redirect '/play'
  end

  get '/play' do
    erb(:play)  
  end

  post '/make-move' do
    @game.make_move(params['move'])
    if @game.moves_complete?
      @game.decide_result
      redirect '/result'
    else
      redirect '/play'
    end
  end

  get '/result' do
    erb(:result)
  end

  post '/reset' do
    @game.reset
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
