def sign_in_and_play
  visit('/')
  click_button 'play'
  fill_in :name, with: 'Ellie'
  click_button 'Start'
end

def visit_how_to
  visit ('/')
  click_button 'play'
end
