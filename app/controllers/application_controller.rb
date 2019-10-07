require 'sinatra'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :views, "app/views"
    set :public_dir, "public"
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = Player.new(params[:name])
    redirect '/game'
  end

  get '/game' do
    @player = session[:name].name
    erb(:game)
  end

  post '/compare-result' do
    @result = RpsGame.new.result(params[:player_hand])
    if @result == 'win'
      redirect '/result-win'
    elsif @result == 'lose'
      redirect '/result-lose'
    elsif @result == 'draw'
      redirect '/result-draw'
    end
  end

  get '/result-lose' do
    erb(:resultlose)
  end

  get '/result-win' do
    erb(:resultwin)
  end

  get '/result-draw' do
    erb(:resultdraw)
  end

end
