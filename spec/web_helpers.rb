def sign_in_and_play_vs_CPU
  visit '/'
  choose 'Human vs. CPU'
  click_button 'Submit'    
  fill_in 'Player_1_Name', with: 'Bob'
  click_button 'Submit'
  click_link "Let's Play!"
end

def sign_in_and_play_2_players
  visit '/'
  choose 'Human vs. Human'
  click_button 'Submit'
  fill_in 'Player_1_Name', with: 'Bob'
  fill_in 'Player_2_Name', with: 'John'
  click_button 'Submit'
  click_link "Let's Play!"
end

def sign_in_and_play_vs_CPU_extended
  visit '/'
  choose 'Human vs. CPU'
  choose 'Extended Rules'
  click_button 'Submit'    
  fill_in 'Player_1_Name', with: 'Bob'
  click_button 'Submit'
  click_link "Let's Play!"
end