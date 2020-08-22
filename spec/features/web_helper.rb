def sing_n_play
  visit('/')
  fill_in('Player', with: "Gosho")
  click_button "GO"
end

def battle 
  sing_n_play
  click_button "Rock"
  click_link "Confirm Choice"
end
