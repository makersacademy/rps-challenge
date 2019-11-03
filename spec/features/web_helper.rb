def submit_player_info
  visit '/'
  fill_in :player_name,with: "Bea"
  click_on "Submit"
end
