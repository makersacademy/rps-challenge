require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/single_game'
require_relative './lib/multi_game'


class RockPaperScissors < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  ##################################################

  get '/single' do
    erb(:single)
  end

  post '/name' do
    player = Player.new(params[:player_1_name])
    @single_game = SingleGame.create(player)
    redirect '/play'
  end

  get '/play' do
    @single_game = SingleGame.instance
    erb(:play)
  end

  post '/attack' do
    @single_game = SingleGame.instance
    @computer_weapon = @single_game.computer_weapon
    @weapon = params[:weapon]
    @result = @single_game.calculate_result(@computer_weapon, @weapon)
    erb(:attack)
  end

  ##################################################

  get '/multi' do
    erb(:multi)
  end

  post '/names' do
    players = Player.new(params[:player_1_name]), Player.new(params[:player_2_name])
    @multi_game = MultiGame.create(players)
    redirect '/play_multi_player'
  end

  get '/play_multi_player' do
    @multi_game = MultiGame.instance
    erb(:play_multi_player_1)
  end

  post '/take_first_weapon' do
    @multi_game = MultiGame.instance
    @multi_game.player_1_weapon = params[:weapon1]
    erb(:play_multi_player_2)
  end

  post '/attack_multi' do
    @multi_game = MultiGame.instance
    @multi_game.player_2_weapon = params[:weapon2]
    @result = @multi_game.calculate_result(@multi_game.player_1_weapon, @multi_game.player_2_weapon)
    erb(:attack_multi)
  end

  run! if app_file == $0

end
