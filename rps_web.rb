require 'sinatra/base'
require './lib/game'

class RPSweb < Sinatra::Base
  get '/' do
    erb :start
  end

  post '/name' do
    $rps = Game.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @name = $rps.name
    erb :play
  end

  get '/rock' do
    $rps.choose_rock
    redirect '/end'
  end

  get '/paper' do
    $rps.choose_paper
    redirect '/end'
  end

  get '/scissors' do
    $rps.choose_scissors
    redirect '/end'
  end

  get '/end' do
    @rps = $rps
    erb :end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
