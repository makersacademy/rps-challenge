def player_sign_in
  visit('/')
  fill_in :name, with: "Daniel"
  click_button "Submit"
end

# def player_move
#
# end
