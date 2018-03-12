require 'sinatra/base'
require_relative 'player.rb'
require_relative 'game.rb'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(params[:mode])
    redirect('/names')
  end

  get '/names' do
    erb(:names)
  end

  post '/game' do
    @game.create_player(params[:player_1_name])
    @game.create_player(params[:player_2_name])
    redirect('/game')
  end

  post '/action' do
    @game.current_player.receive_hand(params[:action])
    redirect('/game')
  end

  get '/game' do
    @game.evaluate
    erb(:game)
  end

  run! if app_file == $0

end
