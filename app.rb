require 'sinatra/base'
require "sinatra/reloader"
require_relative './lib/player.rb'
require_relative './lib/game.rb'
require_relative './lib/com.rb'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player_1 = Player.new(params[:player_1])
    player_2 = Computer.new
    @game = Game.create(player_1, player_2)
    redirect '/rps'
  end

  get '/rps' do
    erb(:rps)
  end

  post '/choice' do
    @game.player_1.add_choice(params[:action])
    @game.player_2.generate_choice
    @game.result(@game.player_1, @game.player_2)
    redirect '/result'
  end
  
  get '/result' do
    erb(:result)
  end

end