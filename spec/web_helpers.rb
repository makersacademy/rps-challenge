def sign_in_and_start
  visit('/')
  fill_in :name, with: 'Marcus'
  click_button 'Submit'
end

def choose_weapon
  click_button 'Start game'
  choose('choice', :match => :first)
  click_button('submit')
end 
