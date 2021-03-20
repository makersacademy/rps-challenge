require 'sinatra/base'
require_relative "./lib/game"

class App < Sinatra::Base
  
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.new_game(params[:name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/selection' do
    @game.update_selection(params[:choices])
    @game.computer
    redirect '/end'
  end

  get '/end' do
    erb @game.evaluate_game
  end

end