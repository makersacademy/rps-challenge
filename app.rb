require 'sinatra'
require './lib/rock_paper_sissors'
require './lib/random_player'

class RPS < Sinatra::Base
  include RandomPlayer
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @name = session[:name] = params[:name]
    redirect('/RPS')
  end

  get '/RPS' do
    @name = session[:name]
    erb(:RPS)
  end

  get '/rock' do
    erb(:rock)
  end

  get '/paper' do
    erb(:paper)
  end

  get '/sissors' do
    erb(:sissors)
  end

end
