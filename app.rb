require 'sinatra'
require './lib/game'
require './spec/my_helper'

class RPSWeb < Sinatra::Application

  set :public_folder, 'public'
  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/two_player' do
    erb(:two_player)
  end

  post '/play' do
    set_up_the_game
    erb(choose_page)
  end

end
