def add_names(name_1, name_2)
  session[:player_name_1] = name_1

  if name_2 != ''
    session[:player_name_2] = name_2
  else
    session[:player_name_2] = 'Deep Thought'
  end
end
