require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require './lib/play'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @play = Play.new(session)
    erb :play
  end

  post '/play' do
    session[:choice] = params[:choice]
    session[:comp_choice] = CompChoice.new.comp_choice
    redirect '/play'
  end

end
