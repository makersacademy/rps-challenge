require 'sinatra/base'
require 'shotgun'

class MyApp < Sinatra::Base
  get '/' do
    erb(:name_form)
  end

  post '/name' do
    $name = params[:name]
    redirect '/rps'
  end

  get '/rps' do
    @name = $name
    erb(:rps)
  end

  post '/rock' do
    $choice = params[:choice]
    redirect '/winner'
  end

  post '/paper' do
    $choice = params[:choice]
    redirect '/winner'
  end

  post '/scissors' do
    $choice = params[:choice]
    redirect '/winner'
  end

  get '/winner' do
    @choice = $choice
    erb(:winner)
  end

  run! if app_file == $0
end
