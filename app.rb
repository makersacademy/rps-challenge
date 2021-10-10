require 'sinatra/base'

class RPS < Sinatra::Base

  module TestHelper
    def res
      "win!"
    end
  end

  get '/' do
    erb :index
  end

  post '/options' do 
    @player_1_name = params[:player_1_name]
    erb :options
  end

  get '/options' do 
    erb :options
  end

  get '/result' do 
    erb :result
  end

  post '/result' do
    @player_1_option = params[:player_1_option]
    @option = ["Rock", "Paper", "Scissors"]
    @bot_option = @option.sample
    erb :result
  end


  run! if app_file == $0
end


