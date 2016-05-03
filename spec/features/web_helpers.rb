def sign_in_and_play_computer
  visit('/')
  fill_in :name1, with: 'Wayne'
  click_button 'Play'
end

def sign_in_and_play_human
  visit('/')
  fill_in :name1, with: 'Wayne'
  fill_in :name2, with: 'Jimmy'
  click_button 'Play'
end

def p1_wins_vs_pc
  visit('/')
  fill_in :name1, with: 'Wayne'
  click_button 'Play'
  click_button 'rock'
end

def p1_wins_vs_p2
  visit('/')
  fill_in :name1, with: 'Wayne'
  fill_in :name2, with: 'Jimmy'
  click_button 'Play'
  click_button 'rock'
  click_button 'scissors'
end

def p2_wins_vs_p1
  visit('/')
  fill_in :name1, with: 'Wayne'
  fill_in :name2, with: 'Jimmy'
  click_button 'Play'
  click_button 'rock'
  click_button 'paper'
end
