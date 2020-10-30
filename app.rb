require 'sinatra/base'
require 'game'
require 'player'

class RPSGame < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :welcome
  end

  post '/game' do
    if @game.nil?
      player1 = Player.new(params[:player_name])
      player2 = Player.new('COMPUTER')
      @game = Game.create(player1, player2)
    end

    redirect '/game'
  end

  get '/game' do
    erb :game
  end
  
  run! if app_file == $PROGRAM_NAME
end
