require 'sinatra/base'

class RPSWeb < Sinatra::Base

  enable :sessions

  get '/' do
    'RPS Game!!'
    erb :index
  end

  post '/names' do
    p params
    player = Player.new(params[:player])
    $game = Game.new(player)
    redirect '/play'
  end



  run! if app_file == $0
end
