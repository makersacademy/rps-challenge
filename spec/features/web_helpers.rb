def one_player_start
  visit('/')
  fill_in :player_1_name, with: 'Mika'
  click_button "Put'em up in lights"
end

def two_player_start
  visit('/')
  fill_in :player_1_name, with: 'Mika'
  fill_in :player_2_name, with: 'Amp'
  click_button "Put'em up in lights"
end

def one_player_chooses_rock
  visit('/')
  fill_in :player_1_name, with: 'Mika'
  click_button "Put'em up in lights"
  click_button 'Rock'
end

def player_one_rock_and_player_two_paper
  visit('/')
  fill_in :player_1_name, with: 'Mika'
  fill_in :player_2_name, with: 'Amp'
  click_button "Put'em up in lights"
  click_button 'Rock'
  click_button 'Paper'
end