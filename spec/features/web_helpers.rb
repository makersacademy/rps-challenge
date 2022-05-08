def player_login

  visit '/'
  fill_in :player_name, with: "Erlantz"
  click_button "Submit"

end
