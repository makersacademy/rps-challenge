require 'sinatra'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    Game.start(params[:name])
    redirect '/play'

  end

  get '/play' do
    @player = Game.current_game.name
    erb :play
  end
  run! if app_file == $0
end
