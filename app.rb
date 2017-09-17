require 'sinatra/base'
require './lib/database'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  database = PlayerDatabase.new

  get '/' do
    @player_2_name = database.contents[0].name
    erb(:index)
  end

  post '/names' do
    database.contents << Player.new(params[:name1])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = database.contents[1].name
    erb(:play)
  end

  post '/combat_selection' do
    database.contents[1].select_weapon(params[:selection])
    redirect '/combat_page'
  end

  get '/combat_page' do
  @computer_opponent_name = database.contents[0].name
  @player_1_name = database.contents[1].name
  @player_1_weapon = database.contents[1].weapon
  erb(:combat_page)
  end

  run! if app_file == $0

end
