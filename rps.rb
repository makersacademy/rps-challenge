require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Rps < Sinatra::Base

  set :public_folder, 'stylesheets'

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player, Computer.new)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/selection' do
    @game.player.selected_option = params[:option]
    erb :selection
  end

  post '/result' do
    @game.computer.random
    erb :result
  end

  run! if app_file == $PROGRAM_NAME
end
