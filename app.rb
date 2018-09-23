require 'sinatra/base'
require './lib/npc.rb'
require './lib/game.rb'

class Play < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/players' do
    session[:round1] = Destiny.new(params[:player_1_name])
    redirect '/battle_ready'
  end

  get '/battle_ready' do
    @player_1_name = session[:round1].player_1_name
    erb(:form)
  end

  post '/memorial' do
    session[:round1] = params[:player_1_name].duel([:weapon])
    @finish = session[:round1] 
    erb(:finale)
  end

  run! if app_file == $0
end
