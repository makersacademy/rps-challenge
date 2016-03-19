require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end
  
  post '/name' do
    player1 = Player.new(params[:name1])
    player2 = Player.new(params[:name2])
    @game = Game.create(player1, player2)
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/rock' do
    @game = Game.instance
    @game.make_player_choice('Rock')
    redirect('/results')
  end

  post '/paper' do
    @game.make_player_choice('Paper')
    redirect('/results')
  end

  post '/scissors' do
    @game.make_player_choice('Scissors')
    redirect('/results')
  end

  post '/spock' do
    @game.make_player_choice('Spock')
    redirect('/results')
  end

  post '/lizard' do
    @game.make_player_choice('Lizard')
    redirect('/results')
  end

  get '/results' do
    if @game.player1_turn == true
      @game.switch_turn
      redirect('/play')
    else
    erb(:results)
    end
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
