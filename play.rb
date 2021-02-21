require 'sinatra/base'
require './lib/game'

class Play < Sinatra::Base
  # configure(:development) { set :session_secret, "My session secret" }
  enable :sessions
  set :session_secret, "My session secret"

  # before do
  #   @game = Game.instance
  # end

  get '/' do
    erb :home
  end

  post '/names' do
    # puts params
    Game.store(Game.new(extract_names(params)))
    puts "/names: ", Game.instance.players
    @game = Game.instance
    puts @game
    session[:game] = @game
    redirect '/game'
  end

  get '/game' do
    @game = session[:game]
    puts "/game: ", @game.class
    @player_names = @game.players
    erb :game
  end
  
end

def extract_names params
  names = []
  params.each do |k, v|
    if k.match?(/player_\d_name/) and !v.empty?
      names << v
    end
  end
  return names

  run! if app_file == $0
end