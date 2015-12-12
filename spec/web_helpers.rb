def enter_name_and_play(name)
  visit 'http://localhost:1337/'
  fill_in :name1, with: name
  click_button 'PLAY!'
end
