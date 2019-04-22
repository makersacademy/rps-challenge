require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    erb :play
  end

  post '/play' do
    session[:player_option] = params[:option].to_sym
    session[:opponent_option] = Opponent.new.option
    redirect '/play'
  end

  run! if app_file == $0
end
