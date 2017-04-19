require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/rock.rb'
require_relative './lib/paper.rb'
require_relative './lib/scissors.rb'


class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    erb :play
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/rock' do
    
  end


  get'/win_lose' do

  end

  run! if app_file == $0
end
