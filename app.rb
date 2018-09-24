require "sinatra/base"
require_relative "./lib/player.rb"
require_relative "./lib/game.rb"
class RockPaperScissors < Sinatra::Application
  enable(:sessions)
  get '/' do
    # 'Testing infrastructure works'
    erb(:index)
  end

  post '/player_count' do
    session[:player_count] = params[:player_count]
    redirect '/enter_names'
  end

  get '/enter_names' do
    @player_count = session[:player_count]
    erb(:enter_names)
  end

  post "/names" do
    session[:player1] = Player.new(params[:player1_name])
    params[:player2_name].nil? ? session[:player2] = Player.new() : session[:player2] = Player.new(params[:player2_name])
    redirect '/game_mode'
  end

  get '/game_mode' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:game_mode)
  end

  post '/game_mode' do
    session[:game_mode] = params[:game_mode]
    redirect '/choose_weapon'
  end

  get '/choose_weapon' do
    @mode = session[:game_mode]
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player_count = session[:player_count]
    erb(:choose_weapon)
  end

  post '/choice' do
    @player_count = session[:player_count]
    if session[:player1].choice.nil?
      session[:player1].choice = params[:player_choice]
      if @player_count == "1p"
        redirect '/play'
      else
        redirect '/choose_weapon'
      end
    elsif session[:player2].choice.nil? && @player_count == "2p"
      session[:player2].choice = params[:player_choice]
      redirect '/play'     
    end
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @game = Game.new(@player1, @player2)
    @mode = session[:game_mode]
    if session[:player_count] == '1p'
      if @mode == 'rpsls'
        @player2.add_special_weapons
      end
      @player2.random_move
    end
    @game.retrieve_winner(@player1, @player2)
    @champ = @game.winner
    erb(:play)
  end
  run! if app_file == $0
end