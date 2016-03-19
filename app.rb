require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end
  
  post '/name' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/rock' do
    @game.make_player_choice('Rock')
    redirect('/results')
  end

  post '/paper' do
    @game.make_player_choice('Paper')
    redirect('/results')
  end

  post '/scissors' do
    @game.make_player_choice('Scissors')
    redirect('/results')
  end

  get '/results' do
    erb(:results)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
