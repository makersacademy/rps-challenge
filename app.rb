require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"
require "./lib/computer.rb"

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end

    post '/name' do
      @player = Player.new(params[:player_name])
      $game = Game.new
      redirect '/play'
    end

    get '/play' do
      erb(:play)
    end

    post '/result' do
      erb(:result)
    end


  run! if app_file == $0

end
