def sign_in_and_play
  visit '/'
      fill_in :name, with: "P1"
      fill_in :name, with: "P2" 
      click_button "Create players"
end