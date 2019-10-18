require 'sinatra/base'
require 'sinatra'
require_relative 'lib/play.rb'
class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @playername = params[:playername]
    erb :play
  end

  post '/move' do
    @rps = params[:rockpaperscissors]
    @result_text = bot(@rps, bot_move())
    erb :results
  end

  run! if app_file == $0
end
