def sign_in_and_play
  visit '/'
    fill_in :P1, with: "P1"
    click_button "Create player"
end