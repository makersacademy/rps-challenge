def sign_in
  visit '/'
  fill_in 'Name', with: 'Bob'
  click_on 'Submit'
end 

def make_move
  click_on 'rock'
end
