require "sinatra/base"
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :name_form, { :layout => :layout }
  end

  post '/name' do
    @game = Game.create(params[:name])
    redirect '/choice'
  end

  get '/choice' do
    erb :choice
  end

  post '/player_choice' do
    @game.choice = params[:choice]
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  run! if app_file == $0

end
