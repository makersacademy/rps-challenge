require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/player_names' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect('/play')
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end
  run! if app_file == $0

  post'/store_rock' do
    @game.store_player_rpc(:rock)
    redirect('/result')
  end

  post'/store_paper' do
    @game.store_player_rpc(:paper)
    redirect('/result')
  end

  post'/store_scissors' do
    @game.store_player_rpc(:scissors)
    redirect('/result')
  end

  get '/result' do
    erb :result
  end
end
