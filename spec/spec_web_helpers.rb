def sign_up
  visit '/'
  fill_in "player_name", with: 'Soulless Marketeer'
  click_button "Bore me now!"
end
