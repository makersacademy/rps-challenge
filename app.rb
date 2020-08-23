require 'sinatra/base'

class Rock_paper_scissors < Sinatra::Base
  require_relative 'lib/game'
  require_relative 'lib/move'
  require_relative 'lib/player'

  enable :sessions

  get '/' do
    erb :index
  end

  post '/1_player_name' do
    player_1 = Player.new(params[:player_1_name])
    @game = Game.init(player_1)
    redirect '/player_1_choice'
  end

  post '/2_player_name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.init(player_1, player_2)
    redirect '/player_1_choice'
  end

  get '/player_1_choice' do
    erb :player_1_choice
  end
end