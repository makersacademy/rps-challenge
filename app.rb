require 'sinatra/base'
require_relative "./lib/weapon.rb"
require_relative "./lib/player.rb"
require_relative "./lib/game.rb"

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect to('/play')
  end

  get '/play' do
    @name = session[:player_name]
    erb(:play)
  end

  post '/calculate' do
    p params
    session[:weapon_1] = Weapon.new(params[:weapon_type])
    session[:computer_name] = "Computer"
    computer = Computer.new(session[:computer_name])
    session[:weapon_2] = Weapon.new(computer.choose_weapon)
    @game = Game.new(session[:player_1])
    @game.add_player(session[:computer])
    session[:result] = session[:weapon_1].beats(session[:weapon_2])
    p "session[:result] is now #{session[:result]}"
    redirect to('/result')
  end

  get '/result' do
    @name = session[:player_name]
    @computer_name = session[:computer_name]
    @weapon_1 = session[:weapon_1]
    @weapon_2 = session[:weapon_2]
    @result = session[:result]
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
