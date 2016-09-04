def splayer_add_name_and_submit
  visit '/'
  click_button "Single player"
  fill_in :player, with: "Bob"
  click_button "Add"
end

def mplayer_add_names_and_submit
  visit '/'
  click_button "Multiplayer"
  fill_in :player1, with: "Bob"
  fill_in :player2, with: "John"
  click_button "Add"
end
