require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player' do
    player = Player.new(params[:player]).name
    bot = Player.new('bot').name
    $game = Game.new(player, bot)
    redirect '/round'
  end

  get '/round' do
    erb(:round)
  end

  post '/option' do
    session[:option] = params[:option]
    redirect '/result'
  end

  get '/result' do
    @option = session[:option]
    erb(:result)
  end

  run! if app_file == $0
end
