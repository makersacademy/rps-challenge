require 'sinatra'
require 'sinatra/base'
require_relative './lib/calc_result.rb'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'My Secret Session'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name]
    session[:computer] = params[:computer]
    session[:turn] = session[:p1_name]
    redirect '/game'
  end

  get '/game' do
    @p1_name = session[:p1_name]
    @comp = " (COMP)" if session[:computer]
    @p2_name = ([session[:p2_name]] << @comp).join()
    @turn = session[:turn]
    erb(:game)
  end

  get '/p1_move' do
    session[:p1_move] = params[:p1_move]
    @comp = " (COMP)" if session[:computer]
    session[:turn] = ([session[:p2_name]] << @comp).join()
    redirect '/game'
  end

  get '/p2_move' do
    session[:p2_move] = params[:p2_move]
    redirect '/result'
  end

  get '/result' do
    @p1_name = session[:p1_name]
    @comp = " (COMP)" if session[:computer]
    @p2_name = ([session[:p2_name]] << @comp).join()
    @p1_move = session[:p1_move]
    @p2_move = session[:p2_move]
    @result = Result.new(@p1_name, @p1_move, @p2_name, @p2_move).calculate
    erb(:result)
  end

  get '/rematch' do
    session[:turn] = session[:p1_name]
    redirect '/game'
  end

  run! if app_file == $0

end
