def sign_in
  visit('/')
  fill_in :player1, with: 'John'
  fill_in :player2, with: 'Jane'
  click_button("Submit")
end

def start_to_play
  click_button("Let's play")
end

def first_move
  fill_in :move, with: 'rock'
  click_button('Enter your choice')
end

def second_move
  fill_in :move, with: 'scissors'
  click_button('Enter your choice')
end

def incorrect_move
  fill_in :move, with: 'roc'
  click_button('Enter your choice')
end
