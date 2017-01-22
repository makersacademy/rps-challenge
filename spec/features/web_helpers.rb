def sign_in_and_play
  visit('/')
  fill_in :player_name, :with => "Dylan"
  click_button "submit"
end
