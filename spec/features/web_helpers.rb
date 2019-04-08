def sign_in_and_play
  visit '/'
  click_button "Play Classic"
  fill_in :player_1_name, with: "Josh"
  click_button 'Play'
end

def sign_in_and_play_multi
  visit '/'
  click_button "Play Classic"
  fill_in :player_1_name, with: "Josh"
  fill_in :player_2_name, with: "Sam"
  click_button 'Play'
end
