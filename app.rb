require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/player_name' do
    session['player_name'] = params['name']
    redirect '/your_turn'
  end

  get '/your_turn' do
    @player_name = session['player_name']
    erb :your_turn
  end

  post '/your_choice' do
    session['rock'] = params['rock']
    session['paper'] = params['paper']
    session['scissors'] = params['scissors']
    redirect '/outcome'
  end

  get '/outcome' do
    @rock = session['rock']
    @paper = session['paper']
    @scissors = session['scissors']
    erb :outcome
  end

  run! if app_file == $0
end
