def pvp_open_page_and_name_selection
  visit("/playervsplayer")
  fill_in :Player1_name, with: "Tom"
  fill_in :Player2_name, with: "Ben"
  click_button "Submit"
end
