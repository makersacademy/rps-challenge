def start_game
  visit('/')
  fill_in :name, with: 'Lewis'
  click_button "Submit"
end
