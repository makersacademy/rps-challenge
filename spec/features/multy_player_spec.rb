feature "Game can be played with thwo people" do 
  scenario "Player can choose to play multiplayer" do 
    multy_sign_n_play
    expect(page).to have_content "Welcome warrior Player_1"
  end

  scenario "Give the turn to the second player" do 
    multy_sign_n_play
    click_link "Confirm Choice"
    expect(page).to have_content "Player_2 turn"
  end
end