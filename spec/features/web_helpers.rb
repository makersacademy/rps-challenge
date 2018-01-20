def enter_name_and_confirm
  visit('/')
  fill_in 'player_name', :with => 'Leigh-ann'
  click_button "Let's go"
end
