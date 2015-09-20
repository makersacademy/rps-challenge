require 'sinatra/base'
require_relative 'rps_helper'

class Rps_Challenge < Sinatra::Base
  set :views, proc {File.join(root,'..','/views')}

  enable :sessions

  before do
    $result = nil
  end

  get '/' do
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

  get '/rock' do
    $game.p1_move(:rock)
    $game.p2_move($cpu.cpu_move)
    $result = $game.play
    $cpu_move_image_helper = cpu_move_image
    erb :new_session
  end

  get '/paper' do
    $game.p1_move(:paper)
    $game.p2_move($cpu.cpu_move)
    $result = $game.play
    $cpu_move_image_helper = cpu_move_image
    erb :new_session
  end

  get '/scissors' do
    $game.p1_move(:scissors)
    $game.p2_move($cpu.cpu_move)
    $result = $game.play
    $cpu_move_image_helper = cpu_move_image
    erb :new_session
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end