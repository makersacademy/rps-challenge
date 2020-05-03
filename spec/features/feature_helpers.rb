def setup
  visit('/')
  fill_in :player_1, with: 'Jed'
  click_on :Submit
end
