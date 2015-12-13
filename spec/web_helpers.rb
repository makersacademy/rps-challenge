def enter_name_and_play(name)
  visit 'http://localhost:1337/'
  fill_in :name1, with: name
  click_button 'PLAY!'
end

def enter_names_and_play_2_player(name1, name2)
  visit 'http://localhost:1337/'
  fill_in :name1, with: name1
  fill_in :name2, with: name2
  click_button 'PLAY!'
end
