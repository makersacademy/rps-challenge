require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/play' do
    @game = Game.instance
    @choice = params[:weapon]
    redirect "/result?weapon=#{@choice}"
  end

  get '/result' do
    @game = Game.instance
    @choice = params[:weapon]
    @result = @game.play(@choice) if @choice
    erb :result
  end

  run! if app_file == $0
end
