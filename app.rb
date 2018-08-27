require 'sinatra/base'
require_relative './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
     $p1 = params[:player_name]
     @p1 = $p1
     redirect '/play'
   end

   get '/play' do
      @p1 = $p1
     erb :play
   end

   post '/choice' do
     $choice = params[:move]
     @choice = $choice
     redirect  '/decision'
   end

   get '/decision' do
      @p1 = $p1
      @choice = $choice
     erb :decision
   end
   
end
