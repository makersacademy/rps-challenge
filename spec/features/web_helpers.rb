def sign_in_and_play
  fill_in :name_1, with: "Spock"
  fill_in :name_2, with: "Kirk"
  click_button "Energize!"
end