require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @p1 = session[:Player1]
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:Player1] = params[:Player1]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/rock' do
    @computer_attack_type = Game.new.computer_attack_type
    erb :rock
  end

  get '/paper' do
    @computer_attack_type = Game.new.computer_attack_type
    erb :paper
  end

  get '/scissors' do
    @computer_attack_type = Game.new.computer_attack_type
    erb :scissors
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
