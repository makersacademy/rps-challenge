require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require './lib/play'
require './lib/comp_choice'

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
    session[:choice] = params[:choice].downcase.to_sym
    session[:comp_choice] = CompChoice.new.comp_choice.to_sym.to_sym
    redirect '/play'
  end

  post '/restart' do
    session[:choice] = nil
    session[:name] = nil
    session[:comp_choice] = nil
    redirect '/'
  end

end
