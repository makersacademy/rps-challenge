require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Welcome to The RPS World Championships!'
    erb(:index)
  end

  get '/info' do
      @name = params[:name]
      erb(:welcome)
  end

  get '/result' do
      @game = Game.new(@selection = params[:selection])
      #@selection = params[:selection]
      erb(:result)
  end

  run! if app_file == $0
end