require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/decide-winner' do
    @game = Game.instance
    @game.player_picks(params[:choice])
    @game.decide_winner
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    erb(:result)
  end

  run! if app_file == $0
end
