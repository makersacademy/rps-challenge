def player_sign_in
  visit('/')
  fill_in :name, with: "Daniel"
  click_button "Submit"
end

def player_choice
  fill_in('player_move', with: 'Rock')
  click_button 'GO!'
end
