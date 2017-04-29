require 'sinatra'
require './lib/game'

class RPSWeb < Sinatra::Application
  enable :sessions
  set :public_folder, 'public'

  helpers do
    def choose_page
      @game.who_won == :draw ? :draw : :victory
    end

    def set_up_the_game
      @player_1 = Player.new(params[:name1])
      @player_2 = Player.new(params[:name2]) unless params[:name2].nil?
      @player_2 = Ai.new if params[:name2].nil?
      @game = Game.create(@player_1, @player_2)
      @game.player_1.choice = params[:weapon1].to_sym
      @game.player_2.choice = params[:weapon2].to_sym unless params[:name2].nil?
    end
  end

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
    session[:name1], session[:choice1] = params[:name1], params[:choice1]
    session[:name2], session[:choice2] = params[:name2], params[:choice2]
    set_up_the_game
    erb(choose_page)
  end

end
