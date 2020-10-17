def sign_in
  visit '/'
  fill_in :name, with: "Rachel"
  click_button 'submit'
end

def sign_in_and_play
  choice = ["Rock", "Paper", "Scissors"].sample
  sign_in
  select(choice, from: 'selection')
  click_button "Let's Play!"
end