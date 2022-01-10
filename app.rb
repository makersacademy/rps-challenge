require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'

class RPSGame < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  helpers do
    def tally
      @game = Game.new
      if @game.outcome(session[:move], session[:computer_move]) == :win
        session[:tally][:player] += 1
      elsif @game.outcome(session[:move], session[:computer_move]) == :draw
        session[:tally][:draws] += 1
      else
        session[:tally][:computer] += 1
      end
    end
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:tally] = { player: 0, computer: 0, draws: 0 }
    session[:player] = params[:player_1_name].capitalize
  
    redirect '/play'
  end

  get '/play' do    
    erb :play
  end

  post '/move' do
    @game = Game.new
    session[:move] = params[:move]
    session[:computer_move] = @game.computer_move
    tally

    redirect '/gameover'
  end

  get '/gameover' do
    @game = Game.new
    @result = @game.outcome(session[:move], session[:computer_move])
    @move = session[:move]
    @computer_move = session[:computer_move]

    erb @result
  end

  run! if app_file == $0
end
