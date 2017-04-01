require 'sinatra/base'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = Player.create(params[:player_1_name])
    @computer = Computer.create
    redirect '/play'
  end

  before do
    @player = Player.instance
    @computer = Computer.instance
  end

  get '/play' do
    @player_1_name = @player.name
    @computer_name = @computer.name
    erb(:play)
  end

  post '/attack' do
    @player_1_name = @player.name
    @computer_name = @computer.name
    @player_attack_method = params[:player_attack_method]
    @computer_attack_method = @computer.attack_method
    erb(:attack)
  end

  run! if app_file == $0
end
