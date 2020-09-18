
def sign_in_and_play
  visit ('/')
  fill_in :name, with: 'Bob' #fill in form field
  click_button 'I am ready to play!'
end