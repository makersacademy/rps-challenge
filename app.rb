require 'sinatra/base'
require 'sinatra/reloader' #if development? - add this for real projects so auto reload only happens in dev mode (otherwise makes server real slow)
require './lib/player'

class BookmarkManager < Sinatra::Base # This is option 1) of sinatra's 'Modular Style' - see 'http://sinatrarb.com/intro.html#Sinatra::Base%20-%20Middleware,%20Libraries,%20and%20Modular%20Apps' - starts with 'ruby app.rb'
  enable :sessions # This allows information to be stored across server requests.
  configure :development do
    register Sinatra::Reloader # This allows the server to automatically update
  end

# Homepage - welcome message
 get '/' do
    erb :index # This page has a form requesting user's name
  end

  post '/user_name' do # this route posts the user information (taking the name param) and renders name to user_name.erb
    $user_name = Player.new(params[:name]) #unlike ruby, instance variables cannot be used across routes (only in the same one)
    @user = $user_name.name
    redirect '/play'
  end

  get '/play' do
    @user = $user_name.name
    erb :play
  end

  post '/choices' do
    $user_choice = Player.new(params[:choice])
    @choice = $user_choice.choice
    redirect '/result'
  end

  get '/result' do
    @choice = $user_choice.choice
    @user = $user_name.name
    @opponent_selection = ['rock', 'paper', 'scissors'].sample
    # @choice.result(@opponent_selection)
    erb :result
  end

  run! if app_file == $0
end