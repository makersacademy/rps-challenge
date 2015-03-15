@ready = true

get '/' do
  
  session.clear
  
  if get_player
    if get_player.selection then get_player.selection = nil end
  end
  if get_opponent
    if get_opponent.selection then get_opponent.selection = nil end
  end    
  erb :index
end  