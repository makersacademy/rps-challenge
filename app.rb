require 'sinatra/base'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/decide-winner' do
    @game.player_picks(params[:choice])
    @game.decide_winner
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0
end
