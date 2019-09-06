require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions
  before do
    @game = Game.instance
  end
  get '/' do
    erb :sign_in
  end

  post '/name' do
    player = Player.new(params[:player])
    @game = Game.create(player)
    redirect '/choice'
  end

  get '/choice' do
    # @player = @game.player.name
    erb :choice
  end

  post '/selection' do
    @game.player.choice = params[:choice]
    redirect '/outcome'
  end

  get '/outcome' do
    # @player = @game.player.name
    # @player_choice = @game.player.choice
    erb :result
  end

  run! if $PROGRAM_NAME == __FILE__
end
