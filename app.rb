require 'sinatra/base'
require 'capybara'
require_relative './lib/player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player, Computer.new)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/game' do
    item = params[:item].to_sym
    @game.player.selects(item)
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  run! if app_file == $0
end
