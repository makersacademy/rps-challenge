require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @name1 = params['name1']
    @game = Game.get
    @game = Game.create(@name1)
    erb(:play)
  end

  post '/result' do
    @game = Game.get
    @userHand = @game.user_hand(params['rpc-radio'])
    @oppHand = @game.machine_hand
    erb(@game.result(@oppHand))
  end

  post '/replay' do
    @game = Game.get
    @name1 = @game.player
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
