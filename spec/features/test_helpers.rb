def sign_in_and_play
  visit('/')
  fill_in :p1_name, with: 'Kath'
  click_button "Press on"
end
