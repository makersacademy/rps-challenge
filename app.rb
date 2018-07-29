require 'sinatra/base'
require 'sinatra'
require_relative './lib/winner'
require_relative './lib/bot'

class Battle < Sinatra::Base
  attr_reader :choice, :bot_choice

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end

  get '/result' do
    @choice = params[:choice]
    @bot_choice = Bot.new.choice_rand
    erb :result
  end

  run! if app_file == $0
end
