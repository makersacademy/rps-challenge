OPTIONS = ["rock", "paper", "scissors"]

def sign_in
  visit('/')
  fill_in('name', with: 'Mew')
  click_button("submit")
end

def sign_in_and_play
  sign_in
  #click_button('rock')
  select('Rock', from: 'choice')
  click_button("submit")
end
