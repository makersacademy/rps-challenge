@ready = true

get '/' do
  
  session.clear

  erb :index
end  