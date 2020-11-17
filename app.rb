require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/rockpaperscissors.rb'

class Game < Sinatra::Base
  enable :sessions

  before do
    @game = session[:game]
  end

  get '/' do
    erb(:index)
  end

  post "/game-mode" do
    params[:choice] == "single_player" ? erb(:single_name) : erb(:multiple_names)
  end

  post "/give-one-name" do
    player1 = Player.new(params[:name])
    player2 = Player.new("Computer", true)
    session[:game] = RockPaperScissors.new(player1, player2)
    redirect('/play')
  end

  post "/give-two-names" do
    player1 = Player.new(params[:name1])
    player2 = Player.new(params[:name2])
    session[:game] = RockPaperScissors.new(player1, player2)
    redirect('/play')
  end

  post "/p1-choice" do
    session[:p1choice] = params[:choice].to_sym

    if @game.player2.is_ai
      session[:p2choice] = RockPaperScissors::CHOICES.sample
      session[:result] = @game.play_round(session[:p1choice], session[:p2choice])
      redirect("/round-results")
    else
      redirect('/p2-turn')
    end
  end

  get "/round-results" do   
    case session[:result]
    when :win then @winner_name = @game.player1.name 
    when :loss then @winner_name = @game.player2.name
    when :draw then @winner_name = "no one, it's a draw"
    end
   
    erb(:results)
  end

  get '/play' do
    erb(:play)
  end

  # get '/p1-turn-multiplayer' do
  #   erb(:p1_turn_multiplayer)
  # end

  get '/p2-turn' do
    erb(:p2_turn_multiplayer)
  end

  post '/p2-multiplayer-choice' do
    session[:p2choice] = params[:choice].to_sym
    session[:result] = @game.play_round(session[:p1choice], session[:p2choice])
    redirect('/round-results')
  end

  get '/next-round' do
    redirect('/final-results') unless @game.winner.nil?

    redirect('/play')
  end

  get '/final-results' do
    erb(:final_results)
  end
end
