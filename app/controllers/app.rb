require 'sinatra/base'
require './app/models/player'

class RockPaperScissors < Sinatra::Base

  before do
    @player = Player.instance
  end

  configure do
    set :views, "app/views"
    set :public_dir, "public"
  end

  get '/' do
    erb :index
  end

  post '/name_received' do
    @player = Player.create(params[:Player_one])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end
  # 
  # post '/choice_received' do
  #   redirect 'choice_displayed'
  # end
  #
  # get '/choice_displayed' do
  #   erb :choice_displayed
  # end

end
