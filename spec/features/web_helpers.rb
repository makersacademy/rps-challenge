def sign_in_and_play
  visit('/')
  fill_in :name, with: "David"
  click_button "Let's Play!"
end

def select_a_move
  choose :move, with: :Paper
  click_button "Submit!"
end