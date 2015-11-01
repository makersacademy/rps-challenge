require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    session['name1'] = params['name1']
    redirect('/game')
  end

  get '/game' do
    @player_name = session['name1']
    erb :game
  end

  post '/select_hand' do
    session['player_1_hand'] = params['player_1_hand'].to_sym
    redirect('/showdown')
  end

  get '/showdown' do
    @player_1_hand = session['player_1_hand']
    erb :showdown
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
