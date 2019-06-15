require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/' do
    $player_name = params[:name]
    redirect '/start'
  end

  get '/start' do
    @player_name = $player_name
    erb(:start)
  end

  post '/start' do
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/play' do
    $choice = params[:choice]
    redirect '/confirmation'
  end

  get '/confirmation' do
    @choice = $choice
    erb(:confirmation)
  end

  post '/confirmation' do
    redirect 'results'
  end

  get '/results' do
    erb(:results)
  end

  run! if app_file == $0
end
