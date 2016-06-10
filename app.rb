require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/start' do
    @name = params[:username].capitalize
    erb :start_layout, :layout => :layout do
      erb :choices
    end
  end

  post '/choices' do
    @choice = params[:choice].capitalize
    erb :continue_layout, :layout => :layout do
      erb :choices
    end
  end

  run! if app_file == $0
end
