require 'sinatra/base'
require_relative './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect('/play')
  end

  get '/play' do
    @player = session[:player]
    $computer = Computer.new
    erb :play
  end

  get '/rock' do
    @comp_choice = $computer.choice
    erb :rock
  end

  get '/paper' do
    @comp_choice = $computer.choice

    erb :paper
  end

  get '/scissors' do
    @comp_choice = $computer.choice
    erb :scissors
  end

  run! if app_file == $0

end
