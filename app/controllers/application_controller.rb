require 'sinatra'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :views, "app/views"
    set :public_dir, "public"
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @player = Player.new(session[:name]).name
    erb(:game)
  end
end
