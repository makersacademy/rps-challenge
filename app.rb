require 'sinatra/base'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/game' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect '/game'
  end

  get '/game' do
    erb(:game)
  end

  post '/turn' do
    if session[:name2] == ""
      @turn = Game.new(params[:move])
      session[:result] = @turn.outcome
      session[:cpu_move] = @turn.cpu_move
      session[:player_move] = params[:move]
      redirect '/result'
    else
      session[:player_move] = params[:move]
      redirect "/multi"
    end
  end

  get '/multi' do
    erb(:multi)
  end

  post "/turn_multi" do
    @turn = Game.new(session[:player_move], params[:move])
    session[:result] = @turn.outcome
    session[:cpu_move] = @turn.cpu_move
    redirect '/result_multi'
  end

  get '/result' do
    erb(:result)
  end

  get '/result_multi' do
    erb(:result_multi)
  end

  run! if app_file == $0

end
