require_relative './lib/game.rb'
require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    Game.new params['name']
    redirect '/play'
  end

  get '/play' do
    erb :play, locals: { name: Game.get_game.player }
  end

  post '/winner' do
    Game.get_game.check_winner params['choice']
    redirect '/final'
  end

  get '/final' do
    erb :announce_winner, locals: { message: Game.get_game.final }
  end

  run! if app_file == $0
end
