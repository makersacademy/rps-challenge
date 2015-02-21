require 'sinatra/base'
require_relative '../lib/computer'
require_relative '../lib/game_result'
require_relative '../lib/game_umpire'
require_relative '../lib/game_weapons'
require_relative '../lib/player'


class RockPaperScissor < Sinatra::Base
  set :public_folder, Proc.new { File.join(root, '..', "public") }
  set :views, Proc.new { File.join(root, "..", "views") }

  enable :sessions
  weapons = GameWeapons.new
  umpire = GameUmpire.new

  get '/' do
    erb :index
  end

  get '/new_player' do
    erb :new_player
  end

  get '/begin' do
    erb :play_game
  end

  post '/begin' do
    if params[:player].empty?
      @enter_name = "You Must Enter Your Name"
      erb :new_player
    else
      session[:player] = Player.new(params[:player])
      session[:computer] = Computer.new(Gem::Platform.local.os)
      erb :play_game
    end
  end

  get '/result' do
    @result = "#{session[:result].announcement}"
    erb :play_game
  end

  post '/result' do
    begin
      session[:player].select_player_weapon(params[:weapon], weapons)
      session[:computer].random_weapon(weapons)
      session[:result] = GameResult.new(umpire, session[:player], session[:computer])
      redirect '/result'
    rescue
      @error_message = "weapons selection was wrong go back and try again"
    end
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
