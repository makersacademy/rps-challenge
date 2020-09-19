def sign_in
  visit '/'
  fill_in 'Name', with: 'Bob'
  click_on 'Submit'
end 

def make_move
  choose 'rock'
  click_on 'Play!'
end 