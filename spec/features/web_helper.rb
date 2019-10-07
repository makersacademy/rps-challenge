def register
  visit('/')
  @name = 'name'
  fill_in 'your_name', with: @name
  click_button 'Register'
end

def selector
  select('Rock', from: 'rock_paper_scissors')
  click_button 'Play'
end
