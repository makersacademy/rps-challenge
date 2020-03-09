require 'sinatra/base'
require './lib/turn'
require './lib/cpu'

class RPS < Sinatra::Base

  attr_reader :turn

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    erb(:play)
  end

  post '/play' do
    session[:player_choice] = params[:choice].downcase.to_sym
    session[:cpu_choice] = Cpu.new.choice
    redirect '/play'
  end

  run if app_file == $0
end