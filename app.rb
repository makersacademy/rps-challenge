require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(Player.new(params[:player_name]), Computer.new)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
      @game.play(params.dig(:rps).to_sym)
      @game.choice
      @game.play_rps
    redirect '/outcome'
  end

  get '/outcome' do 
    erb :outcome
  end
end