require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  before do
    @game = Game.access
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @player = @game.player.name
    erb :play
  end

  run! if app_file == $PROGRAM_NAME
end
