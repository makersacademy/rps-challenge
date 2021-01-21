require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @move = session[:move]
    @computer_move = session[:computer_move]
    erb :play
  end

  post '/play' do
    session[:move] = params[:move]
    session[:computer_move] = [:rock, :paper, :scissors].sample
    redirect '/play'
  end

  run! if app_file == $0
end
