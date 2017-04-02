require 'sinatra/base'
require_relative './lib/computer'
require_relative './lib/results'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/result'
  end

  get '/result' do
    computer = Computer.new
    $computer_choice = computer.make_decision
    @player_choice = session[:player_choice]
    $result = Results.new.result(@player_choice, $computer_choice)
    erb(:result)
  end

  run! if app_file == $0

end
