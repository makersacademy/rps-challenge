require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = params[:player_1]
    @game = Game.create(player_1, player_2 = computer)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end
  run! if app_file == $0
end
