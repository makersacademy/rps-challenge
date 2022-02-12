require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/rps.rb'
require_relative './lib/player.rb'


class Rockpaperscissors < Sinatra::Base 
  configure :development do 
    register Sinatra::Reloader 
  end

  get '/' do
    erb(:index)
  end

  get '/signin' do
    #@name = Player.new(params[:name])
    erb(:signin)
  end

  post '/play' do
    @name = Player.new(params[:name])
    @name2 = Player.new(params[:name2])
    erb(:play)
  end

  


  run! if app_file == $0
end