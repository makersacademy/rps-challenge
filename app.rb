require 'sinatra/base'
require './lib/computer.rb'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player_name = params[:player_name]
    redirect('/play')
  end

  get '/play' do
    @player_name = $player_name
    erb(:play)
  end

  post '/choice' do
    $player_choice = params[:choice] 
    redirect('/outcome')
  end

  get '/outcome' do
    @player_choice = $player_choice
    @computer_choice = Computer.new.choice
    erb(:outcome)
  end

  run! if app_file == $0
end
