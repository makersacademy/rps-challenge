require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb (:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    @name = session[:name]
    @tool = session[:tool]
    @opponent_tool = session[:opponent_tool]
    erb (:play)
  end

  post '/play' do
    session[:tool] = params[:tool]
    session[:opponent_tool] = Opponent.new.tool
    redirect '/play'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
