require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @move = Move.new(session)
    erb(:play)
  end

  post '/play' do
    session[:choice] = params[:choice]
    session[:computer_choice] = Computer.new.choice
    redirect '/play'
  end

  run! if app_file == $0
end
