require 'sinatra/base'
require_relative 'game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player,Computer.new)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  post '/rock' do
    @game.player_1.make_choice(:rock)
    redirect 'result'
  end

  post '/paper' do
    @game.player_1.make_choice(:paper)
    redirect 'result'
  end

  post '/scissors' do
    @game.player_1.make_choice(:scissors)
    redirect 'result'
  end

  get '/result' do
    @game = Game.instance
    erb(:result)
  end

  run! if app_file == $0

end
