require 'sinatra/base'


class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @names=params[:names]
    erb :names
  end

  post '/choice1' do
  end

  post '/choice2' do
  end

  post '/choice3' do
  end



  run! if app_file == $0

end
