require 'sinatra/base'
require 'sinatra'
require './lib/game'


class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/login' do
    session[:me] = params[:player_name]
    players = params[:number_of_players].to_i
    redirect '/error' if Game.create(player_name: params[:player_name], players: players)
    puts "Wait #{Game.wait?}"
    Game.wait? ? redirect('/login_wait') : redirect('/play')

    # if params[:number_of_players] == 'one'
    #   Game.create_ai(player1_name:session[:me])
    #   redirect '/play'
    # else
    #   if Game.instance.nil?
    #     Game.create_human(player1_name:session[:me])
    #   else
    #     Game.instance.add_player(player_name: session[:me])
    #   end
    #   redirect '/login_wait'
    # end
  end

  get '/login_wait' do
    @login = true
    erb(:wait)
  end

  post '/login_check' do
    @game = Game.instance
    @opponent = @game.find_opponent(session[:me])
    @opponent.nil? ? redirect('/login_wait') : redirect('/play')
  end

  get '/play' do
    @game = Game.instance
    @me = @game.find_me(session[:me])
    @opponent = @game.find_opponent(session[:me])
    @result = @game.result
    erb(:play)
  end

  post '/turn' do
    redirect '/nothing_selected' if params[:play].nil?
    @game = Game.instance
    @game.in_progress!
    @game.find_me(session[:me]).play(params[:play].to_sym)

    if Game.number_of_players == 1
      @game.find_opponent(session[:me]).play
      @game.find_winner
      @game.turn_finished!
      redirect '/play'
    else
      redirect '/play_wait'
    end
  end

  get '/play_wait' do
    @login = false
    erb(:wait)
  end

  post '/play_check' do
    @game = Game.instance
    if @game.both_played?
      @game.find_winner
      @game.turn_finished!
      redirect '/play'
    elsif @game.turn_finished?
      redirect '/play'
    else
      redirect '/play_wait'
    end
  end

  post '/new' do
    Game.reset
    redirect '/'
  end

  get '/nothing_selected' do
    erb(:nothing_selected)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
