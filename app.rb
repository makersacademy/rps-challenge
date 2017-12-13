require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base

  attr_reader :result
  
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(Player.new(params[:player]))
    redirect '/play'
  end

  get '/play' do
    @player = @game.player.name
    erb :play
  end

  post '/move' do
    @game.play(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @result = @game.outcome
    erb :result
  end

  run! if app_file == $0
end
