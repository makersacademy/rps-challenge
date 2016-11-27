require 'sinatra/base'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base

  before do
    @game = Game.instance

  end


  get '/' do
    erb(:index)
  end

  post '/name' do
    player_name = params[:player_name]
    computer_defense = Computer.new.counter_attack
    @game = Game.create(player_name, computer_defense)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance

    erb(:play)
  end

  get '/rock_confirm' do

    erb(:rock_confirm)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
