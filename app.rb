require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/single_sign_in' do
    @players = 1
    erb :sign_in
  end

  get '/multi_sign_in' do
    @players = 2
    erb :sign_in
  end

  post '/players' do
    # IDEA: refactor to take both players with default for nil player 2
    if params[:player_2].nil?
      session[:game] = Game.single_player(params[:player_1])
    else
      session[:game] = Game.multi_player(params[:player_1], params[:player_2])
    end
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
