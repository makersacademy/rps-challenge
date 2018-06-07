require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/results'
require './lib/computer'
require './lib/choice'

class Rps < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:name].capitalize)
    player2 = Computer.new
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  post '/multiplayer' do
    player1 = Player.new(params[:name].capitalize)
    player2 = Player.new('player 2')
    @game = Game.create(player1, player2)
    erb :multiplayer
  end

  post '/enter' do
    @game.player2.name = params[:name2].capitalize
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/record' do
    choice1 = Choice.new(params[:choice])
    @game.record(choice1)
    if @game.player2.name == 'Computer'
      choice2 = @game.player2
      @game.record_second_player(choice2)
      redirect '/results'
    else
      redirect '/play'
    end
  end

  post '/record2' do
    choice2 = Choice.new(params[:choice])
    @game.record_second_player(choice2)
    redirect '/results'
  end

  get '/results' do
    results = Results.new(@game.player1.name, @game.player2.name, @game.choice1, @game.choice2)
    @game.get_results(results)
    erb :results
  end

  run! if app_file == $0
end
