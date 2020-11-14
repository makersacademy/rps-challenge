require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @player_name = nil
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    p @player_name
    @player_name = params[:player_name]
    p @player_name
    redirect('/play')
  end

  get '/play' do
    p @player_name
    erb(:play)
  end

  run! if app_file == $0
end