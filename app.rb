require 'sinatra/base'
require_relative './lib/player.rb'

class RockPaper < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/setup' do
    $name = Player.new(params[:player1])
    redirect('/play')
  end

  get '/play' do
    @name = $name.name
    erb(:play)
  end

  get '/load' do
    $name.decision = params[:action]
    erb(:load)
  end

  get '/result' do
    @image = $name.decision
    erb(:result)
  end
end
