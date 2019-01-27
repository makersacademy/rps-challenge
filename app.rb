require 'sinatra/base'
require 'shotgun'
require './lib/result'
require './lib/cpu'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:names)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    @player_name = session[:player_name]
    erb(:game)
  end

  post '/cpu_choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/result'
  end

  post '/result' do
    @cpu = CPU.new
    @cpu_choice = @cpu.option
    session[:player_choice] = params[:player_choice]
    @player_name = session[:player_name]
    @player_choice = session[:player_choice]
    erb(:result)
  end

  # @result = (CheckResult.new(@player_choice, @cpu_choice)).determine
  # @result = session[:result]
  run! if app_file == $PROGRAM_NAME

end
