require 'sinatra/base'
require './lib/game'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    erb :play
  end

  post '/play' do
    session[:player_item] = params[:item].downcase.to_sym
    session[:computer_item] = Computer.new.item
    redirect 'play'
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
