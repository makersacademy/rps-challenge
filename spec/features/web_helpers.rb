def sign_in
  visit '/'
  fill_in :name, with: 'Adil'
  click_button 'submit'
end

def sign_in_and_choose
  sign_in
  click_button 'rock'
end

def sign_in_multi
  visit '/'
  fill_in :player1, with: 'Adil'
  fill_in :player2, with: 'Joj'
  click_button 'submit2'
end

def multi_player1_win
  sign_in_multi
  click_button 'rock'
  click_button 'scissors'
end

def multi_player2_win
  sign_in_multi
  click_button 'rock'
  click_button 'paper'
end

def multi_tie
  sign_in_multi
  click_button 'rock'
  click_button 'rock'
end
