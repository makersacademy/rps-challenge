require 'sinatra/base'
require_relative 'rps_helper'

class Rps_Challenge < Sinatra::Base
  set :views, proc {File.join(root,'..','/views')}
  set :public, proc {File.join(root,'..','/public')}

  enable :sessions

  before do
    $result = nil
  end

  get '/' do
    session.clear
    erb :index
  end

  get '/new_game' do
    erb :new_game
  end

  get '/new_session' do
    redirect '/new_game' if params[:name] == ""
    session[:name] = params[:name]
    $name = session[:name]
    erb :new_session
  end

  get '/choose' do
    $game.p1_move(params[:selection])
    $game.p2_move($cpu.cpu_move)
    $result = $game.play
    $cpu_move_image_helper = cpu_move_image
    erb :new_session
  end

  run! if app_file == $PROGRAM_NAME
end