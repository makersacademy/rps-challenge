require 'sinatra/base'
require './lib/player'
require './lib/turn'
require './lib/computer'

class RPS < Sinatra::Base
  set :sessions, true
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_1_name]
    redirect '/attack'
  end

  get '/attack' do
    @turn = Turn.new(session)
    erb :attack
  end

  post '/result' do
    session[:player_attack] = params[:attack].downcase.to_sym
    session[:computer_attack] = Computer.new.attack
    @turn = Turn.new(session)
    erb :result
  end

  run! if app_file == $0
end