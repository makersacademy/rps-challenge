require 'sinatra/base'

class Rps_Challenge < Sinatra::Base
  set :views, proc {File.join(root,'..','/views')}

  enable :sessions

  before do
    #move this to /new_session
    require_relative 'rps_helper'
  end

  get '/' do
    erb :index
  end

  get '/new_game' do
    $name = params[:name]
    erb :new_game
  end

  get '/new_session' do
    $name = params[:name]
    session[:name] = $name
    redirect '/new_game' if $name == nil || $name == ""
    erb :new_session
  end

  get '/rock' do
    $game.p1_move(:r)
    $game.p2_move($cpu.cpu_move)
    $result = $game.play
    erb :new_session
  end

  get '/paper' do
    $game.p1_move(:p)
    $game.p2_move($cpu.cpu_move)
    $result = $game.play
    erb :new_session
  end

  get '/scissors' do
    $game.p1_move(:s)
    $game.p2_move($cpu.cpu_move)
    $result = $game.play
    erb :new_session
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end