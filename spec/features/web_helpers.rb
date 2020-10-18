def sign_in
  visit '/'
  click_link 'solo'
  fill_in :name, with: "Rachel"
  click_button 'Submit'
end

def sign_in_and_play
  choice = ["Rock", "Paper", "Scissors"].sample
  sign_in
  select(choice, from: 'selection')
  click_button "Let's Play"
end
