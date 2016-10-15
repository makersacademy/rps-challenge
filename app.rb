require 'sinatra/base'
require './lib/player.rb'
require './lib/opponent.rb'
require './lib/game.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/new_game' do
  	name = params[:name] 
    player2_name = params[:player2_name] if !params[:player2_name].nil? 
    if params[:human] == "true"  
      player2 = Player.new(player2_name) 
    else 
      player2 = Opponent.new
    end
  	Game.create(Player.new(name),player2)
  	redirect '/game'
  end

  get '/game' do
    @game = Game.instance
    erb :game
  end

  post '/choice' do
    @game = Game.instance
    @game.player.choice = params[:choice] if params[:choice]
    @game.opponent.choice = params[:player2_choice] if params[:player2_choice]
    if @game.redirect? == true 
      redirect '/player2_choice' 
    elsif @game.opponent.is_a?(Opponent)
      @game.opponent.choose 
    end
		@game.decide_winner
		erb :choice
	end

  get '/player2_choice' do
    @game = Game.instance
    erb :player2_choice
  end

  get '/reset_choices' do
    reset_choices
    redirect '/game'
  end 

  def reset_choices
    @game = Game.instance
    @game.player.choice = nil
    @game.opponent.choice = nil
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
