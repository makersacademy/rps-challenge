require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game.rb'
require './lib/player.rb'


class RPSController < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:main)
  end

  post '/login_name' do
    Game.create_game
    Game.instance.add_player(Player.new(params["Name"]))
    redirect "/play"
  end

  get '/login' do
    erb(:login)
  end

  get "/play" do
    @game = Game.instance
    "#{Game.instance.players.first.name} is Playing"
  end

  run! if app_file == $0
end