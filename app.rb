require 'sinatra'
require 'sinatra/reloader' if development?


class Game  < Sinatra::Base
  enable :sessions
  attr_reader :name, :choice
  
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  post '/rock' do
    session[:choice] = 'Rock'
    redirect '/result'
  end

  post '/paper' do
    session[:choice] = 'Paper'
    redirect '/result'
  end

  post '/scissor' do
    session[:choice] = 'Scissor'
    redirect '/result'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

end