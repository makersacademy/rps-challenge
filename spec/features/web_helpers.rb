def sign_in_and_play
  visit ('/')
  fill_in :player_name, with: 'Kyle'
  click_button "Start the game"
end
