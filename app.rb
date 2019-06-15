require 'sinatra/base'


class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @names=params[:names]
    erb :names
  end




  run! if app_file == $0

end
