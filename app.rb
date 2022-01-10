require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload './lib/game.rb'
    also_reload './lib/player.rb'
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.new(params[:player])
    Game.create(@player)
    redirect to '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/choice' do
    @game = Game.instance
    @game.player.save_choice(params[:choice])
    redirect to '/result'
  end

  get '/result' do
    @game = Game.instance
    @computer_choice = @game.make_choice
    erb @game.give_result(@computer_choice)
  end

  run! if app_file == $0
end
