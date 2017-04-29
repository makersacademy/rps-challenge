require 'sinatra'
require './lib/game'

class RPSWeb < Sinatra::Application
  #enable :sessions
  set :public_folder, 'public'

  helpers do
    def choose_page
        @game.who_won == :draw ? :draw : :victory
    end

    def set_up_the_game
      @player_1 = Player.new(params[:name])
        if params[:name_2].nil?
          @player_2 = Ai.new
        else
          @player_2 = Player.new(params[:name_2])
        end
      @game = Game.create(@player_1, @player_2)
      @game.player_1.choice = params[:weapon].to_sym
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
    session[:name], session[:choice] = params[:name], params[:choice]
    set_up_the_game
    erb(choose_page)
  end

end
