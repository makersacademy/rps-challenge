require 'sinatra/base'
require './lib/game'
require './lib/computer'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  run! if app_file == $0

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/attack' do
    @game.choose_weapon(params[:weapon])
    @game.computer_choose_weapon
    redirect('/outcome')
  end

  get '/outcome' do
    erb(:outcome)
  end

end
