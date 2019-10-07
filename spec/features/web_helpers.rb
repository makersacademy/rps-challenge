def setup
  visit('/')
  fill_in :player1, with: 'Dove'
  click_button "Let's Go!"
end
