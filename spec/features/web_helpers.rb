def sign_in
  visit '/'
  click_link 'solo'
  fill_in :name, with: "Rachel"
  click_button 'Submit'
end

def sign_in_and_play
  sign_in
  select(random_choice, from: 'selection')
  click_button "Let's Play"
end

def multi_sign_in
  visit '/'
  click_link 'multi'
  fill_in :name_1, with: "Rachel"
  fill_in :name_2, with: "Jack"
  click_button "Submit"
end

def random_choice
  ["Rock", "Paper", "Scissors"].sample
end
