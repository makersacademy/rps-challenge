require 'sinatra/base'
require './lib/player'

class RPS <Sinatra::Base

  # attr_reader :@player1, @player2

  get '/rps-game' do
    erb(:index)
  end

  post '/users' do
    @@player1 ||= Player.new(params[:player1])
    @@player2 ||= Player.new(params[:player2])
    query = params.map{|key, value| "#{key}=#{value}"}.join("&")
    redirect to("/start?#{query}")
  end

  get '/start' do
    @player1 = @@player1.name
    @player2 = @@player2.name
    erb(:user)
    
  end
end