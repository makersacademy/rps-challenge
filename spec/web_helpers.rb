def enter_name_and_play
  visit('/')
    fill_in :name, with: "Arthur"
    click_button "Play"
end