require 'sinatra/base'


class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:marketeer_player] = params[:marketeer1]
    @marketeer_player = session[:marketeer_player]
    erb :play
  end
  #
  # post '/play' do
  #   @marketeer_player = session[:marketeer_player]
  #   erb :result
  # end

  get '/result' do
    @marketeer_player = session[:marketeer_player]
    @comp_move = Computer.new.move
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
