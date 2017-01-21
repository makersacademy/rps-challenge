require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions # you have to enable sessions first so that you can later use the session variables

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:name] # here we're saving the name from the the params to the session so we can use it later
    redirect '/play' # redirecting to play, because we don't want to render a view from post action
  end

  get '/play' do # defining action play
    @turn = Turn.new(session) # Turn was applied to refactor this method, integrating name, tool and bot_tool into turn!
    erb :play
  end

  post '/play' do
    session[:player_tool] = params[:tool]
    session[:bot_tool] = :rock
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
