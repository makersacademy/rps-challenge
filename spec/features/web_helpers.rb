
def sign_in_and_play
  visit('/')
  fill_in 'name', with: 'Steph'
  click_button "Submit"
end

def make_a_move
  visit('/')
  fill_in 'name', with: 'Steph'
  click_button "Submit"
  click_button "Make your move"
end
