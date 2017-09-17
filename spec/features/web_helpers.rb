def choose_rock
  visit('/')
  fill_in :player_1_name, with: 'Benjamin'
  find('select[id="Weapondrop"]').select("Rock")
  click_button 'Fight'
end

def choose_paper
  visit('/')
  fill_in :player_1_name, with: 'Benjamin'
  find('select[id="Weapondrop"]').select("Paper")
  click_button 'Fight'
end

def choose_scissors
  visit('/')
  fill_in :player_1_name, with: 'Benjamin'
  find('select[id="Weapondrop"]').select("Scissors")
  click_button 'Fight'
end
