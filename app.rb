require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/cpu.rb'

class RPS < Sinatra::Base

  before do
    @game = Game.loader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.create(Game.new(Player.new(params[:name]), CPU.new))
    redirect '/game_page'
  end

  get '/game_page' do
    @name, @ai_name = @game.p1_name, @game.p2_name
    erb(:game_page)
  end

  post '/battle' do
    @game.player1.choice = params[:pick]
    redirect '/round_over'
  end

  run! if app_file == $0
end
