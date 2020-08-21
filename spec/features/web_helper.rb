def sing_n_play
  visit('/')
  fill_in('Player', with: "Gosho")
  click_button "GO"
end