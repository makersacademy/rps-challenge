def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Win'
  click_button "Go!"
end