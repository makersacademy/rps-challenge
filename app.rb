class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end
  
  post '/register' do
    
    redirect '/play'
  end

  run! if app_file == $0
end