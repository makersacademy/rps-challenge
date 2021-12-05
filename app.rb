require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @mode = nil
    $game = nil
    erb(:index)
  end

  post '/mode' do
    @mode = params[:mode]
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new((params[:player2] || 'Computer'))
    mode = params[:player2] ? '2 player' : '1 player'
    $game = Game.new(player1, player2, mode)
    redirect '/game'
  end

  get '/game' do
    @game = $game
    erb(:game)
  end

  post '/return_result' do
    @game = $game
    if @game.mode == '1 player'
      @game.players[0].move(params[:move])
      @game.players[1].move(@game.generate_move)
      redirect '/result'
    elsif @game.mode == '2 player'
      @game.players[0].move.nil? ? @game.players[0].move(params[:move]) : @game.players[1].move(params[:move])
      @game.players[1].move.nil? ? erb(:game) : (redirect '/result')
    end
  end

  get '/result' do
    @game = $game
    erb(:result)
  end

  run! if app_file == $0
end
