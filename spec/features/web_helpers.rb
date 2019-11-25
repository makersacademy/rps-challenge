def sign_in_and_play
  visit '/one-player'
  fill_in :player_1_name, with: "Rebecca"
  fill_in :choice, with: 'ROCK'
  click_button 'Submit'
end

def sign_in_and_play_multiple
  visit '/two-player'
  fill_in :player_1_name, with: "Rebecca"
  fill_in :player_2_name, with: "Lily"
  fill_in :choice, with: 'ROCK'
  fill_in :choice_2, with: 'PAPER'
  click_button 'Submit'
end
