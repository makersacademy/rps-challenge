def register
  visit('/')
  fill_in('player_name', with: 'Pikachu')
  click_button('Submit')
end

def register_2
  visit('/')
  fill_in('player_name', with: 'Snorlax')
  click_button('Submit')
end

def chose_rock
  find('#Rock').click
  click_button('Submit')
end

def chose_paper
  find('#Paper').click
  click_button('Submit')
end

def chose_scissors
  find('#Scissors').click
  click_button('Submit')
end
