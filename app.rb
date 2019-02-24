require 'sinatra/base'
require './lib/game'
require './lib/ai'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :welcome
  end

  post '/names' do
    session[:name] = params[:name]
    redirect('/fight')
  end

  get '/fight' do
    @name = session[:name]
    erb :fight
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect('/result')
  end

  get '/result' do
    p @name = session[:name]
    p @choice = session[:choice]
    p @ai_choice = AI.new.choice
    p @result = Game.new(@choice, @ai_choice).winner
    erb :result
  end


  !run if app_file == $0

end
